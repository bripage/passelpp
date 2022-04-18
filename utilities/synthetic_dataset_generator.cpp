//
// Created by Brian on 4/18/2022.
//

#include <iostream>
#include <vector>
#include <algorithm>
#include <iomanip>
#include <random>
#include <fstream>
#include <string>
#include <cstring>
#include <map>
constexpr int FLOAT_MIN = 0;
constexpr int FLOAT_MAX = 1;

int main(int argc, char** argv) {
    std::string argTemp;
    char* outPath;
    int64_t sample_count;
    int64_t feature_count;
    int64_t avg_nnz_per_sample;

    for (int i = 1; i < argc; i = i + 2) {
        argTemp = argv[i];
        if (argTemp == "-o") {
            // save split files to path
            outPath = (char *) malloc(strlen(argv[i + 1]) * sizeof(char));
            strcpy(outPath, argv[i + 1]);
        } else if (argTemp == "-s") {
            // number of samples (rows)
            sample_count = atoi(argv[i + 1]);
        } else if (argTemp == "-f") {
            // number of features (columns)
            feature_count = atoi(argv[i + 1]);
        } else if (argTemp == "-a") {
            // average number of non-zeros we want per sample
            avg_nnz_per_sample = atoi(argv[i + 1]);
        } else if (argTemp == "--help") {
            printf("SYNTHGEN: This utility program will generate a synthetic data set. The output is a binary"
                   "file of 64bit integers in which each non-zero value is accompanied by its sample id, feature id,"
                   "and it's sample's class value. This generator will create a data set of S samples (rows) and "
                   " F features, with each sample having A non-zeros per sample with their actual feature id being"
                   "being assigned randomly from F\n\n");
            printf("Usage: ./synthgen [OPTION] <argument> ...\n");
            printf("Options:\n");
            printf("-a <[0-9]^*]> \tAverage Non-Zeros per Sample\n");
            printf("-f <[0-9]^*]> \tFeature Set Size\n");
            printf("-o <file path> \tOutput file path\n");
            printf("-s <[0-9]^*]> \tSplit Count\n");
            exit(0);
        } else {
            printf("%s Is not a valid parameter. Try --help for more information.\n EXITING!\n", argv[i]);
            exit(0);
        }
    }

    FILE *fout;
    fout = fopen(outPath, "ab");
    std::srand(std::time(nullptr));
    std::map<int64_t, int64_t> sample_data;
    std::map<int64_t, int64_t>::iterator mapit;

    int64_t val, class_id, feature_id;
    int64_t l_tmp;
    double d_tmp;
    for (int64_t i = 0; i <= sample_count; i++) {
        if (i % 2 == 0){
            class_id = 1;
        } else {
            class_id = -1;
        }
        std::map<int64_t, int64_t> sample_data;
        while (sample_data.size() != avg_nnz_per_sample){
            feature = rand()%feature_count;
            d_tmp = FLOAT_MIN + (float)(rand()) / ((float)(RAND_MAX/(FLOAT_MAX - FLOAT_MIN)));
            d_tmp *= (16777216 * class_id);
            val = (int64_t) d_tmp;
            sample_data[feature] = val;
        }
        for (mapit = sample_data.begin(); mapit != sample_data.end(); mapit++) {
            feature_id = mapit->first;
            val = mapit->second;
            fwrite(&i, sizeof(int64_t), 1, fout);
            fwrite(&feature_id, sizeof(int64_t), 1, fout);
            fwrite(&val, sizeof(int64_t), 1, fout);
            fwrite(&class_id, sizeof(int64_t), 1, fout);

            std::cout << i << ", " << feature_id << ", " << val << ", " << class_id << std::endl;
        }
    }
    fclose(fout);
    std::cout << "Done!" << std::endl;
    return 0;
}