//
// Created by bpage1 on 7/26/21.
//
#include "include/passelpp.h"
#include "include/sgd.h"
#include "include/accuracy.h"

int main(int argc, char **argv) {
    volatile uint64_t start_time, total_time, epoch_start, epoch_total;
    volatile double epoch_runtime, convergence_time;
    long eta_gamma, beta_gamma;
    long best_model_acc, best_cluster_id;
    long epochs_within_epsilon = 1;
    double previous_accuracy = 0.0, current_accuracy = 0.0;

    /** Get Command line arguements for test run */
    parse_args(argc, argv);
    /** allocate memory for training/testing data, model/working vectors, populate data */
    init();
    eta_gamma = eta;
    beta_gamma = beta;

    if (using_clusters) {
        printf("--- Starting ---\n");
        fflush(stdout);
        //for (long threads = 1; threads <= threads_per_cluster; threads *= 2) {
            start_time = CLOCK();
            for (long epoch = 1; epoch <= epochs; epoch++) {
                //printf("epoch %ld started\n", epoch);
                //fflush(stdout);
                epoch_start = CLOCK();
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
                epoch_total = CLOCK() - epoch_start;
                epoch_runtime = (double) epoch_total / 215000000;

                //printf("Epoch %ld Time: %lf\n", epoch, epoch_runtime);
                //fflush(stdout);

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
                // printf("peak accuracy on cluster %ld: %lf\n", best_cluster_id,
                //       (double) accuracies[0][best_cluster_id] / (double) 16777216);
                //fflush(stdout);
                if (model_reinitialization) {
                    if (reinit_type == 1) {
                        for (long i = 0; i < cluster_count; i++) {
                            cilk_migrate_hint(&model_vec[best_cluster_id]);
                            cilk_spawn reinitialize_models(best_cluster_id, i);
                        }
                        cilk_sync;
                    } else if (reinit_type == 2) {
                        for (long i = 0; i < cluster_count; i++) {
                            cilk_migrate_hint(&model_vec[best_cluster_id]);
                            cilk_spawn nudge_reinitialize_models(best_cluster_id, i);
                        }
                        cilk_sync;
                    }
                }

                current_accuracy = (double) best_model_acc / (double) 16777216;
                printf("%ld,%ld,%lf,%lf\n", test_id, epoch, epoch_runtime, current_accuracy);
                fflush(stdout);
                if (fabs(current_accuracy - previous_accuracy) <= epsilon) {
                    epochs_within_epsilon++;
                    if (epochs_within_epsilon == 3) {
                        total_time = CLOCK() - start_time;
                        convergence_time = (double) total_time / 215000000;
                        printf("%ld,%ld,%lf,%lf\n", test_id, epoch, convergence_time, current_accuracy);
                        fflush(stdout);
                        return 0;
                        //break;
                    }
                } else {
                    epochs_within_epsilon = 1;
                }
                previous_accuracy = current_accuracy;
            }
            printf("%ld,inf,inf,%lf\n", test_id, current_accuracy);
            fflush(stdout);

            //for (long i = 0; i < cluster_count; i++) {
            //    accuracies[0][i] = 0;
            //    total_evaluated_sample_count[i] = 0;
            //    for (long j = 0; j < featureSetSize; j++) {
            //        model_vec[i][j] = 0;
            //    }
            //}
            //MIGRATE(&model_vec[0]);
        //}
    } else {
        if (using_epoch_barriers) {
            printf("--- Starting ---\n");
            fflush(stdout);
            //for (long threads = 1; threads <= threads_per_cluster; threads *= 2) {
            start_time = CLOCK();
            for (long epoch = 1; epoch <= epochs; epoch++) {
                //printf("epoch %ld started\n", epoch);
                //fflush(stdout);
                epoch_start = CLOCK();
                if (epoch > 1) {
                    eta_gamma *= gamma;
                    eta_gamma >>= 24;
                }
                for (long t = 0; t < threads_per_cluster; t++) {
                    cilk_migrate_hint(&model_vec_stripped[t]);
                    cilk_spawn stripped_train(t, eta_gamma);
                }
                cilk_sync;
                epoch_total = CLOCK() - epoch_start;
                epoch_runtime = (double) epoch_total / 215000000;
                get_stripped_accuracy();
                MIGRATE(&model_vec_stripped[0]);
                current_accuracy = (double) accuracies[0][0] / (double) 16777216;
                printf("%ld,%ld,%lf,%lf\n", test_id, epoch, epoch_runtime, current_accuracy);
                fflush(stdout);
                if (fabs(current_accuracy - previous_accuracy) <= epsilon) {
                    epochs_within_epsilon++;
                    if (epochs_within_epsilon == 3) {
                        total_time = CLOCK() - start_time;
                        convergence_time = (double) total_time / 215000000;
                        printf("%ld,%ld,%lf,%lf\n", test_id, epoch, convergence_time, current_accuracy);
                        fflush(stdout);
                        return 0;
                        //break;
                    }
                } else {
                    epochs_within_epsilon = 1;
                }
                previous_accuracy = current_accuracy;
            }
            printf("%ld,inf,inf,%lf\n", test_id, current_accuracy);
            fflush(stdout);
        } else {
            printf("--- Starting ---\n");
            fflush(stdout);
            //for (long threads = 1; threads <= threads_per_cluster; threads *= 2) {
            start_time = CLOCK();
            for (long t = 0; t < threads_per_cluster; t++) {
                cilk_migrate_hint(&model_vec_stripped[t]);
                cilk_spawn stripped_train(t);
            }
            cilk_sync;
            total_time = CLOCK() - start_time;

            get_stripped_accuracy();
            MIGRATE(&model_vec_stripped[0]);
            current_accuracy = (double) accuracies[0][0] / (double) 16777216;
            printf("%ld,%ld,%lf,%lf\n", test_id, epochs, total_time, current_accuracy);
            fflush(stdout);
            total_time = CLOCK() - start_time;
        }
    }

	return 0;
}

