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
            epoch_running[n] = cluster_count;
            cilk_migrate_hint(&model_vec[n]);
            cilk_spawn train_spawn(n, epoch, eta_gamma, beta_gamma);
        }

        if (cluster_count > 1) {
            //if (update_type == 1) { // tokens passed in clockwise ring pattern
                for (long i = 0; i < updater_count; i += cluster_count / updater_count) {
                    cilk_migrate_hint(&model_vec[i]);
                    cilk_spawn update_clusters(1, beta_gamma);
                }
            /*} else if (update_type == 2) { // tokens passed in oppossing ring patters simultaneously
                for (long i = 0; i < updater_count; i += cluster_count / updater_count) {
                    cilk_migrate_hint(&model_vec[i]);
                    cilk_spawn update_clusters(1, beta_gamma);
                }
                for (long i = (cluster_count / updater_count) / 2;
                     i < updater_count; i += cluster_count / updater_count) {
                    cilk_migrate_hint(&model_vec[i]);
                    cilk_spawn update_clusters(2, beta_gamma);
                }
            } else if (update_type == 3) { // tokens passed in clockwise ring pattern
                for (long i = 0; i < updater_count; i += cluster_count / updater_count) {
                    cilk_migrate_hint(&model_vec[i]);
                    cilk_spawn update_clusters(3, beta_gamma);
                }
            }*/
            printf("updates done\n", epoch);
            fflush(stdout);
        }
        cilk_sync;
        total_time = CLOCK() - start_time;
        epoch_time = (double) total_time / 210000000;

        printf("epoch %ld done\n", epoch);
        fflush(stdout);
/*
        if (cluster_count > 1){
            train_accuracy = get_trainData_accuracy(0);
            test_accuracy = get_testData_accuracy(0);
        } else {
            train_accuracy = get_single_trainData_accuracy(0);
            test_accuracy = get_single_testData_accuracy(0);
        }

        printf("%ld,%ld,%lf,%lf,%lf\n", test_id, epoch, train_accuracy, test_accuracy, epoch_time);
        fflush(stdout);
*/
        printf("%ld,%ld,%lf\n", test_id, epoch, epoch_time);
        fflush(stdout);
    }

	return 0;
}

