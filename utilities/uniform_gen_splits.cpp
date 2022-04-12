/*
 * CSV2BIN: This utility program will read in a 3 column csv file and output its contents to binary.
 *          Note: csv data is expected to be numeric in every column, and binary output uses the 64 bit integer
 *          (int64_t) datatype.
 *
 * Author: Brian Page
 */

#include <iostream>
#include <vector>
#include <string>
#include <cstring>
#include <fstream>
#include <unistd.h>
#include <algorithm>
#include "stdint.h"

int main(int argc, char **argv) {
    std::string argTemp;
    char* fileName;
    char* splitPath;
    int splitType;
    int splitCount;
    int64_t features;

    for (int i = 1; i < argc; i = i + 2) {
        argTemp = argv[i];
        if (argTemp == "-i") {
            // load data file.
            fileName = (char *) malloc(strlen(argv[i + 1]) * sizeof(char));
            strcpy(fileName, argv[i + 1]);
        } else if (argTemp == "-o") {
            // save split files to path
            splitPath = (char *) malloc(strlen(argv[i + 1]) * sizeof(char));
            strcpy(splitPath, argv[i + 1]);
        } else if (argTemp == "-s") {
            // split count
            splitCount = atoi(argv[i + 1]);
        } else if (argTemp == "-t") {
            // split type
            splitType = atoi(argv[i + 1]);
        } else if (argTemp == "-f") {
            // split type
            features = atoi(argv[i + 1]);
        } else if (argTemp == "--help") {
            printf("CSV2BIN: This utility program will read in a 3 column csv file and output its contents to"
                   "binary. Note: csv data is expected to be numeric in every column, and binary output uses the 64 bit"
                   "integer (int64_t) datatype.\n\n");
            printf("Usage: ./csv2bin [OPTION] <argument> ...\n");
            printf("Options:\n");
            printf("-f <###> \tFeature Set Size\n");
            printf("-i <file> \tInput filename (assumes csv structure is: sample_id,feature_id,feature_value)\n");
            printf("-o <file path> \tOutput file path\n");
            printf("-s <Num splits> \tSplit Count\n");
            printf("-t <0|1> \tSplit Type: 0 = Contiguous row (bin packed), 1 = Feature Partitioned\n");
            exit(0);
        } else {
            printf("%s Is not a valid parameter. Try --help for more information.\n EXITING!\n", argv[i]);
            exit(0);
        }
    }

    std::vector <std::vector <std::pair<int64_t,int64_t> > > A;
    std::vector<int64_t> classes;
    std::vector <std::vector<int64_t>> split_contents;
    for (int i = 0; i < splitCount; i++) {
        std::vector <int64_t> tmpvec;
        split_contents.push_back(tmpvec);
    }

    std::vector <std::pair<int64_t,int64_t> > fcounts;
    for (int i = 0; i < features; i++) {
        fcounts.emplace_back(std::make_pair(i,0));
    }

    ///////////////////////////////////////////
    ///    Read in data from binary file    ///
    ///////////////////////////////////////////
    FILE *data = fopen(fileName, "rb");
    if (data == NULL) {
        printf("Failed to open training feature file.\n");
        exit(1);
    }
    int64_t file_points;
    int64_t *binBuffer;
    int64_t bytesRead;
    fseek(data, 0, SEEK_END);
    int64_t num_bytes = ftell(data);
    file_points = num_bytes / 8;
    fseek(data, 0, SEEK_SET);
    binBuffer = (int64_t *) malloc(file_points * sizeof(int64_t));
    bytesRead = fread(binBuffer, sizeof(int64_t), file_points, data);
    if (bytesRead != (file_points)) {
        printf("*** Feature File Read Failure ***\n");
        exit(1);
    }
    int64_t class_val;
    int64_t feature;
    int64_t value;
    int64_t sample;
    int64_t sample_count = 0;
    int64_t current_sample = -1;
    std::pair <int64_t,int64_t> tpair;
    for (int64_t i = 0; i < file_points; i += 4) {
        std::cout << "1" << std::endl;
        sample = binBuffer[i];
        std::cout << "2" << std::endl;
        feature = binBuffer[i + 1] - 1;
        std::cout << "3" << std::endl;
        value = binBuffer[i + 2];
        std::cout << "4" << std::endl;
        class_val = binBuffer[i + 3];
        std::cout << "5" << std::endl;

        if (sample != current_sample){
            sample_count++;
            current_sample = sample;
            classes.push_back(class_val);
            std::vector <std::pair<int64_t,int64_t> > row;
            A.push_back(row);
            std::cout << "sample " << A.size() << std::endl;
        }
        std::cout << "7" << std::endl;
        tpair.first = feature;
        tpair.second = value;
        std::cout << "8" << std::endl;
        A[sample_count].push_back(tpair));
        std::cout << "9" << std::endl;
        fcounts[feature].second += 1;
        std::cout << "10" << std::endl;
    }
    fclose(data);
    free(binBuffer);
    printf("Sample Count: %ld\n", sample_count);
    fflush(stdout);
    std::cout << "Stage 1 COMPLETE" << std::endl;

    ///////////////////////////////////////////
    ///       Sort features by degree       ///
    ///////////////////////////////////////////
    std::sort(std::begin(fcounts), std::end(fcounts),
              [&](const auto& a, const auto& b) {
                  return a.second > b.second;
              });
    std::cout << "Stage 2 COMPLETE" << std::endl;

    ///////////////////////////////////////////
    ///      Greedy bin pack features       ///
    ///////////////////////////////////////////
    std::vector<int64_t> packing(splitCount, 0);
    std::vector<int64_t> f_assign(features, 0);
    int64_t minsplit, minpacking;
    for (int64_t i = 0; i < features; i++){
        minpacking = packing[0];
        minsplit = 0;
        for (int64_t s = 1; s < splitCount; s++){
            if (packing[s] < minpacking){
                minsplit = s;
                minpacking = packing[s];
            }
        }
        packing[minsplit] += fcounts[i].second;
        f_assign[fcounts[i].first] = minsplit;
    }
    std::cout << "Stage 3 COMPLETE" << std::endl;

    ///////////////////////////////////////////
    ///      Populate split partitions      ///
    ///////////////////////////////////////////
    for (int64_t i = 0; i < A.size(); i++) {
        for (int64_t j = 0; j < A[i].size(); j++){
            split_contents[f_assign[A[i][j].first]].push_back(i);
            split_contents[f_assign[A[i][j].first]].push_back(A[i][j].first);
            split_contents[f_assign[A[i][j].first]].push_back(A[i][j].second);
            split_contents[f_assign[A[i][j].first]].push_back(classes[i]);
        }
        A[i].clear();
    }
    std::cout << "Stage 4 COMPLETE" << std::endl;

    ///////////////////////////////////////////
    ///         Write splits to file        ///
    ///////////////////////////////////////////
    char *fname = (char*)malloc(strlen(splitPath) + 10);
    for (int64_t s = 0; s < splitCount; s++) {
        sprintf(fname, "%sp%ld.bin", splitPath, s);
        FILE* split_file = fopen(fname, "ab");

        for (int64_t i = 0; i < split_contents[s].size(); i++) {
            fwrite(&split_contents[s][i], sizeof(int64_t), 1, split_file);
        }
        fclose(split_file);
    }

	std::cout << "Done!" << std::endl;
	return 0;
}