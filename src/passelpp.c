//
// Created by bpage1 on 7/26/21.
//
#include "include/passelpp.h"
#include "include/sgd.h"
#include "include/accuracy.h"

int main(int argc, char **argv) {
    volatile uint64_t start_time, total_time;
    long eta_gamma, beta_gamma;
    long best_model_acc, best_cluster_id;
    double current_accuracy = 0.0;

    /** Get Command line arguements for test run */
    parse_args(argc, argv);
    /** allocate memory for training/testing data, model/working vectors, populate data */
    init();
    eta_gamma = eta;
    beta_gamma = beta;

    if (using_clusters) {
        printf("--- Starting ---\n");
        fflush(stdout);
        start_time = CLOCK();
        for (long epoch = 1; epoch <= epochs; epoch++) {
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
        }
        total_time = CLOCK() - start_time;

        for (long n = 0; n < cluster_count; n++) {
            cilk_migrate_hint(&model_vec[n]);
            cilk_spawn get_accuracy(n);
        }
        cilk_sync;
        best_model_acc = accuracies[0][0];
        for (long n = 1; n < cluster_count; n++) {
            if (accuracies[0][n] > best_model_acc) {
                best_model_acc = accuracies[0][n];
                best_cluster_id = n;
            }
        }
        current_accuracy = (double) best_model_acc / (double) 16777216;
        printf("%ld,%ld,%lf,%lf\n", test_id, epochs, (double) total_time / 215000000, current_accuracy);
        fflush(stdout);
    } else {
        //printf("--- Starting ---\n");
        //fflush(stdout);
        start_time = CLOCK();
        for (long t = 0; t < threads_per_cluster; t++) {
            cilk_migrate_hint(&model_vec_stripped[t]);
            cilk_spawn stripped_train_no_epochs_spawn_children(t);
        }
        cilk_sync;
        total_time = CLOCK() - start_time;

        get_stripped_accuracy();
        MIGRATE(&model_vec_stripped[0]);
        current_accuracy = (double) accuracies[0][0] / (double) 16777216;
        printf("%ld,%ld,%lf,%lf\n", test_id, epochs, (double) total_time / 215000000, current_accuracy);
        fflush(stdout);
    }

	return 0;
}

