//
// Created by Brian Page on 2020-07-10.
//

#include "include/accuracy.h"

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
    long points = non_zeros * 4;
    long *binBuffer;
    long bytesRead;

    if (points > 67108864) {
        long chunk_points = 67108864;
        long chunk_count = 0, final_chunk_points = 0;

        chunk_count = points / 67108864;
        final_chunk_points = points - (chunk_count * chunk_points);
        if (final_chunk_points != 0) {
            chunk_count++;
        }
        printf("chunk_count = %ld\n", chunk_count);
        fflush(stdout);
        binBuffer = (long *) malloc(chunk_points * sizeof(long));
        if (binBuffer == NULL) {
            printf("Failed to allocate initial buffer chunk.\n");
            exit(1);
        }
        bytesRead = fread(binBuffer, sizeof(long), chunk_points, test_features);

        for (long c = 0; c < chunk_count; c++) {
            for (i = 0; i < chunk_points; i += 4) {
                sample = binBuffer[i];
                feature = binBuffer[i + 1] ;
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
                    test_s_stripped[sample] = j;
                    test_c_stripped[sample] = class;
                    current_sample = sample;
                }
                test_f_stripped[j] = feature;
                test_v_stripped[j] = fixed_value;
                j++;
            }

            if (chunk_count > 1 && c != chunk_count - 1) {
                if (c + 1 == chunk_count - 1) {
                    bytesRead = fread(binBuffer, sizeof(long), final_chunk_points, test_features);
                    if (bytesRead != final_chunk_points) {
                        printf("Error in reading final file chunk\n");
                        exit(1);
                    }
                    printf("final file chunk copied into buffer\n");
                    fflush(stdout);
                    chunk_points = final_chunk_points;
                } else {
                    bytesRead = fread(binBuffer, sizeof(long), chunk_points, test_features);
                    if (bytesRead != chunk_points) {
                        printf("Error in reading file chunk %ld\n", c + 1);
                        exit(1);
                    }
                    printf("file chunk %ld of %ld copied into buffer\n", c + 1, chunk_count);
                    fflush(stdout);
                }
            }
        }
    } else {
        points = non_zeros * 4;
        binBuffer = (long *) malloc(points * sizeof(long));
        bytesRead = fread(binBuffer, sizeof(long), points, test_features);
        if (bytesRead != (points)) {
            printf("*** Test Feature File Read Failure ***\n");
            exit(1);
        }

        for (i = 0; i < points; i += 4) {
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
                test_s_stripped[sample] = j;
                test_c_stripped[sample] = class;
                current_sample = sample;
            }
            test_f_stripped[j] = feature;
            test_v_stripped[j] = fixed_value;
            j++;
        }
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