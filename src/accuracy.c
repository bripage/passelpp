//
// Created by Brian Page on 2020-07-10.
//

#include "include/accuracy.h"

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
            test_f[j] = 0;
            test_v[j] = 1;
            j++;
            test_s[sample] = j;
            test_f[j] = feature;
            test_v[j] = fixed_value;
            test_c[sample] = class;
            current_sample = sample;
        } else {
            test_f[j] = feature;
            test_v[j] = fixed_value;
        }
        j++;
    }
    test_s[sample + 1] = j; // add sample id end ptr

    fclose(test_features);
    free(binBuffer);
}


double get_trainData_accuracy(long n){
    double correct_samples = 0.0;
    double accuracy;
    long j;
    long dotProduct;
    long start;
    long stop;
    long feature;
    long sample_node;
    long local_sample_num;

    for (long i = 0; i < train_sample_count; i++) {
        printf("evaluating model against trainData sample %ld\n", i);
        fflush(stdout);
        sample_node = i/samples_per_cluster;
        local_sample_num = i % samples_per_cluster;

        dotProduct = 0;
        start = train_s[sample_node][local_sample_num];
        stop = train_s[sample_node][local_sample_num+1];

        printf("start: %ld, stop: %ld\n", start, stop);
        fflush(stdout);

        for (j = start; j < stop; j++) {
            feature = train_f[sample_node][j];
            dotProduct += (train_v[sample_node][j] * model_vec[n][feature]) >> 24;
        }

        if (dotProduct * train_c[sample_node][local_sample_num] > 0){
            correct_samples += 1;
        }
    }

    accuracy = 100*(correct_samples/train_sample_count);
    return accuracy;
}


double get_testData_accuracy(long n){
    double correct_samples = 0.0;
    double accuracy;
    long j;
    long dotProduct;
    long start;
    long stop;
    long feature;

    for (long i = 0; i < test_sample_count; i++) {
        printf("evaluating model against testData sample %ld\n", i);
        fflush(stdout);
        dotProduct = 0;
        start = test_s[i];
        stop = test_s[i+1];

        for (j = start; j < stop; j++) {
            feature = test_f[j];
            dotProduct += (test_v[j] * model_vec[n][feature]) >> 24;
        }

        if (dotProduct * test_c[i] > 0){
            correct_samples += 1;
        }
    }

    accuracy = 100*(correct_samples/test_sample_count);
    return accuracy;
}

double get_single_trainData_accuracy(){
    double correct_samples = 0.0;
    double accuracy;
    long j;
    long dotProduct;
    long start;
    long stop;
    long feature;

    for (long i = 0; i < train_sample_count; i++) {
        dotProduct = 0;
        start = train_s[0][i];
        stop = train_s[0][i+1];

        for (j = start; j < stop; j++) {
            feature = train_f[0][j];
            dotProduct += (train_v[0][j] * working_vec[0][feature]) >> 24;
        }

        if (dotProduct * train_c[0][i] > 0){
            correct_samples += 1;
        }
    }

    accuracy = 100*(correct_samples/train_sample_count);
    return accuracy;
}


double get_single_testData_accuracy(){
    double correct_samples = 0.0;
    double accuracy;
    long j;
    long dotProduct;
    long start;
    long stop;
    long feature;

    for (long i = 0; i < test_sample_count; i++) {
        dotProduct = 0;
        start = test_s[i];
        stop = test_s[i+1];

        for (j = start; j < stop; j++) {
            feature = test_f[j];
            dotProduct += (test_v[j] * working_vec[0][feature]) >> 24;
            //printf("%ld,test_v[%ld],working_vec[0][%ld],%ld,%ld\n", dotProduct, j, feature, test_v[j], working_vec[0][feature]);
            //fflush(stdout);
        }

        if (dotProduct * test_c[i] > 0){
            correct_samples += 1;
        }
    }

    accuracy = 100*(correct_samples/test_sample_count);
    return accuracy;
}