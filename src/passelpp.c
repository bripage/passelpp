//
// Created by bpage1 on 7/26/21.
//
#include "include/passelpp.h"
#include "include/sgd.h"
#include "include/accuracy.h"

int main(int argc, char **argv) {
    volatile uint64_t start_time, total_time;
    volatile double epoch_time;
    double train_accuracy, test_accuracy;
    long eta_gamma, beta_gamma;

    /** Get Command line arguements for test run */
    parse_args(argc, argv);

    /** allocate memory for training/testing data, model/working vectors, populate data */
    init();

    eta_gamma = eta;
    beta_gamma = beta;
    for (long epoch = 1; epoch <= epochs; epoch++) {
        start_time = CLOCK();
        if (epoch > 1) {
            beta_gamma *= gamma;
            beta_gamma >>= 24;
            eta_gamma *= gamma;
            eta_gamma >>= 24;
        }

        for (long n = 0; n < cluster_count; n++) {
            cilk_migrate_hint(&model_vec[n]);
            cilk_spawn train_spawn(n, epoch, eta_gamma, beta_gamma);
        }
        cilk_sync;
        total_time = CLOCK() - start_time;
        epoch_time = (double) total_time / 175000000;

        if (cluster_count != 1) {
            for (long i = 0; i < cluster_count; i++) {
                if (up_token[i] == 1) {
                    if (i == 0){
                        train_accuracy = get_trainData_accuracy(cluster_count-1);
                        test_accuracy = get_testData_accuracy(cluster_count-1);
                    } else {
                        train_accuracy = get_trainData_accuracy(i-1);
                        test_accuracy = get_testData_accuracy(i-1);
                    }
                    //train_accuracy = get_trainData_accuracy(i);
                    //test_accuracy = get_testData_accuracy(i);
                    break;
                }
            }
        } else {
            train_accuracy = get_single_trainData_accuracy(0);
            test_accuracy = get_single_testData_accuracy(0);
        }

        printf("%ld,%ld,%lf,%lf,%lf\n", test_id, epoch, train_accuracy, test_accuracy, epoch_time);
        fflush(stdout);
    }

	return 0;
}