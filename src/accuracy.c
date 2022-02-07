//
// Created by Brian Page on 2020-07-10.
//

#include "include/accuracy.h"
/*
void populateTestData() {
    long i;
    long sample = -1;
    long feature;
    long fixed_value;
    long class;
    long j = 0;

    long current_sample = -1;
    test_features = NULL;
    test_features = fopen(test_feature_path, "rb");
    if (test_features == NULL) {
        printf("Failed to open test feature file.\n");
        exit(1);
    }

    long non_zeros = total_test_points - test_sample_count;
    long points;
    long *binBuffer;
    long bytesRead;

    points = non_zeros * 4;
    //printf("points = %ld\n", points);
    //fflush(stdout);
    binBuffer = (long *) malloc(points * sizeof(long));
    bytesRead = fread(binBuffer, sizeof(long), points, test_features);
    if (bytesRead != (points)) {
        printf("*** Test Feature File Read Failure ***\n");
        exit(1);
    }
    //printf("bytesRead = %ld\n", bytesRead);
    //fflush(stdout);
    for (i = 0; i < points; i += 4) {
        //printf("%ld\n", i);
        //fflush(stdout);
        sample = binBuffer[i];
        feature = binBuffer[i + 1];
        fixed_value = binBuffer[i + 2];
        class = binBuffer[i + 3];

        if (non_standard_classes) {
            if (class == class1) {
                class = -1;
            } else if (class == class2) {
                class = 1;
            } else {
                printf("ERROR: Training Data classes do not match class range\n");
                fflush(stdout);
                exit(2);
            }
        }

        if (sample != current_sample) {
            for (long c = 0; c < cluster_count; c++) {
                test_f[c][j] = 0;
                test_v[c][j] = 1;
            }
            j++;
            for (long c = 0; c < cluster_count; c++) {
                test_s[c][sample] = j;
                test_f[c][j] = feature;
                test_v[c][j] = fixed_value;
                test_c[c][sample] = class;
            }
            current_sample = sample;
        } else {
            for (long c = 0; c < cluster_count; c++) {
                test_f[c][j] = feature;
                test_v[c][j] = fixed_value;
            }
        }
        j++;
    }
        for (long c = 0; c < cluster_count; c++) {
            test_s[c][sample + 1] = j; // add sample id end ptr
        }

    fclose(test_features);
    free(binBuffer);
}
*/
void populateTestDataStripped() {
    printf("%Populating Test Data\n");
    fflush(stdout);
    long i;
    long sample = -1;
    long feature;
    long fixed_value;
    long class;
    long j = 0;

    long current_sample = -1;
    test_features = NULL;
    test_features = fopen(test_feature_path, "rb");
    if (test_features == NULL) {
        printf("Failed to open test feature file.\n");
        exit(1);
    }

    long non_zeros = total_test_points - test_sample_count;
    long points;
    long *binBuffer;
    long bytesRead;

    points = non_zeros * 4;
    //printf("points = %ld\n", points);
    //fflush(stdout);
    binBuffer = (long *) malloc(points * sizeof(long));
    bytesRead = fread(binBuffer, sizeof(long), points, test_features);
    if (bytesRead != (points)) {
        printf("*** Test Feature File Read Failure ***\n");
        exit(1);
    }
    //printf("bytesRead = %ld\n", bytesRead);
    //fflush(stdout);
    for (i = 0; i < points; i += 4) {
        //printf("%ld\n", i);
        //fflush(stdout);
        sample = binBuffer[i];
        feature = binBuffer[i + 1];
        fixed_value = binBuffer[i + 2];
        class = binBuffer[i + 3];

        if (non_standard_classes) {
            if (class == class1) {
                class = -1;
            } else if (class == class2) {
                class = 1;
            } else {
                printf("ERROR: Training Data classes do not match class range\n");
                fflush(stdout);
                exit(2);
            }
        }

        if (sample != current_sample) {
            test_f_stripped[j] = 0;
            test_v_stripped[j] = 1;
            j++;
            test_s_stripped[sample] = j;
            test_f_stripped[j] = feature;
            test_v_stripped[j] = fixed_value;
            test_c_stripped[sample] = class;
            current_sample = sample;
        } else {
            test_f_stripped[j] = feature;
            test_v_stripped[j] = fixed_value;
        }
        j++;
    }
    test_s_stripped[sample + 1] = j; // add sample id end ptr
    fclose(test_features);
    free(binBuffer);
}

void get_accuracy(long n){
    double correct_samples = 0.0;
    double accuracy;
    long j;
    long dotProduct;
    long start;
    long stop;
    long feature;

    for (long i = 0; i < test_sample_count; i++) {
        dotProduct = 0;
        start = test_s_stripped[i];
        stop = test_s_stripped[i+1];

        for (j = start; j < stop; j++) {
            feature = test_f_stripped[j];
            dotProduct += (test_v_stripped[j] * model_vec[n][feature]) >> 24;
        }

        if (dotProduct * test_c_stripped[i] > 0){
            correct_samples += 1;
        }
    }

    accuracy = 100*(correct_samples/test_sample_count);
    accuracy *= 16777216;
    accuracies[0][n] = (long) accuracy;
}

void get_stripped_accuracy(){
    double correct_samples = 0.0;
    double accuracy;
    long j;
    long dotProduct;
    long start;
    long stop;
    long feature;

    for (long i = 0; i < test_sample_count; i++) {
        dotProduct = 0;
        start = test_s_stripped[i];
        stop = test_s_stripped[i+1];
        for (j = start; j < stop; j++) {
            feature = test_f_stripped[j];
            dotProduct += (test_v_stripped[j] * model_vec_stripped[feature]) >> 24;
        }

        //printf("%ld * %ld = %ld\n", dotProduct, test_c_stripped[i], dotProduct * test_c_stripped[i]);
        //fflush(stdout);

        if (dotProduct * test_c_stripped[i] > 0){
            correct_samples += 1;
        }
    }
    accuracy = 100*(correct_samples/test_sample_count);
    accuracy *= 16777216;
    accuracies[0][0] = (long) accuracy;
}