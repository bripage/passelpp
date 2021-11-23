//
// Created by bpage1 on 7/26/21.
//
#include "include/passelpp.h"
#include "include/sgd.h"
#include "include/accuracy.h"

int main(int argc, char **argv) {
    volatile uint64_t start_time, total_time;
    volatile double epoch_time;
    double train_accuracy = 0.0, test_accuracy = 0.0;
    long eta_gamma, beta_gamma;
    long best_model_acc, best_cluster_id;

    /** Get Command line arguements for test run */
    parse_args(argc, argv);
    /** allocate memory for training/testing data, model/working vectors, populate data */
    init();
    eta_gamma = eta;
    beta_gamma = beta;

    for (long epoch = 1; epoch <= epochs; epoch++) {
        printf("epoch %ld started\n", epoch);
        fflush(stdout);
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
        epoch_time = (double) total_time / 210000000;

        printf("Epoch %ld Time: %lf\n", epoch, epoch_time);
        fflush(stdout);

        for (long n = 0; n < cluster_count; n++) {
            cilk_migrate_hint(&model_vec[n]);
            cilk_spawn get_single_testData_accuracy(n);
        }
        cilk_sync;

        best_model_acc = accuracies[0][0];
        for (long n = 1; n < cluster_count; n++) {
            if (accuracies[0][n] > best_model_acc) {
                best_cluster_id = n;
            }
        }

        for (long i = 0; n < cluster_count; n++) {
            cilk_migrate_hint(&model_vec[best_cluster_id]);
            cilk_spawn reinitialize_models(best_cluster_id, i);
        }
        cilk_sync;
    }

	return 0;
}

