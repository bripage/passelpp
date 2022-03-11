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
#include "stdint.h"

int main(int argc, char **argv) {
    std::string argTemp;
    char* fileName;
    char* splitPath;
    int splitType;
    int splitCount;

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
        } else if (argTemp == "--help") {
            printf("CSV2BIN: This utility program will read in a 3 column csv file and output its contents to"
                   "binary. Note: csv data is expected to be numeric in every column, and binary output uses the 64 bit"
                   "integer (int64_t) datatype.\n\n");
            printf("Usage: ./csv2bin [OPTION] <argument> ...\n");
            printf("Options:\n");
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

    std::vector <std::vector<int64_t>> split_contents;
    for (int i = 0; i < splitCount; i++) {
        std::vector <int64_t> tmpvec;
        split_contents.push_back(tmpvec);
    }

    int64_t i;
    long n;
    long assigned_node;
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
    int64_t sample_count = -1;
    int64_t current_sample = -1;

    for (i = 0; i < file_points; i += 4) {
        sample = binBuffer[i];
        feature = binBuffer[i + 1] - 1;
        value = binBuffer[i + 2];
        class_val = binBuffer[i + 3];
        assigned_node = feature % splitCount;

        if (sample != current_sample){
            current_sample++;
            split_contents[assigned_node].push_back(sample);
            split_contents[assigned_node].push_back(0);
            split_contents[assigned_node].push_back(0);
            split_contents[assigned_node].push_back(class_val);
        }

        split_contents[assigned_node].push_back(sample);
        split_contents[assigned_node].push_back(feature);
        split_contents[assigned_node].push_back(value);
        split_contents[assigned_node].push_back(class_val);
    }
    fclose(data);
    free(binBuffer);

    char *fname = (char*)malloc(strlen(splitPath) + 10);
    for (int64_t s = 0; s < splitCount; s++) {
        sprintf(fname, "%sp%ld.bin", splitPath, s);
        FILE* split_file = fopen(fname, "ab");

        for (i = 0; i < split_contents[assigned_node].size(); i++) {
            fwrite(&split_contents[assigned_node][i], sizeof(int64_t), 1, split_file);
        }
        fclose(split_file);
    }

	std::cout << "Done!" << std::endl;
	return 0;
}