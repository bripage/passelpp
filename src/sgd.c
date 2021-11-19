//
// Created by Brian Page on 2020-04-09.
//

#include "include/sgd.h"

void update_clusters(long n) {
    for (long i = 0; i < cluster_count; i++) {
        if (i != n) {
            for (long j = l_mv_start[n]; j < l_mv_stop[n]; j++) {
                model_vec[i][j] = model_vec[n][j];
            }
        }
    }
}

void train_spawn(long n, long epoch, long eta_gamma, long beta_gamma){
    long end_sample_count = cluster_samples[n] * epoch;
    for (long i = 0; i < threads_per_cluster; i++) {
        cilk_migrate_hint(&model_vec[n]);
        cilk_spawn train(i, n, eta_gamma, beta_gamma, end_sample_count);
    }
}

void train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count) {
    long* l_model_vec = model_vec[n];
    long* l_train_s = train_s[n];
    long* l_train_c = train_c[n];
    long* l_train_f = train_f[n];
    long* l_train_v = train_v[n];
    long* l_feat_deg_recip = feat_deg_recip[n];
    long start;
    long stop;
    long class;
    long feature;
    long distance;
    long di;
    long i;
    long l_temp;
    long mv_temp;
    unsigned long rand_state = 1337 + (1337 * thread_id);
    unsigned long sample;

    while (ATOMIC_ADDMS(&total_evaluated_sample_count[n],1) < end_sample_count) {
        if (total_evaluated_sample_count[n] % update_period == 0){
            cilk_spawn update_clusters(n);
        }

        sample = rand_state;
        sample ^= sample >> 12; // a
        sample ^= sample << 25; // b
        sample ^= sample >> 27; // c
        rand_state = sample;
        sample *= UINT64_C(0x2545F4914F6CDD1D);
        sample %= cluster_samples[n];

        distance = 0;
        start = l_train_s[sample];
        stop = l_train_s[sample + 1];
        class = l_train_c[sample];
        for (i = start; i < stop; i++) {
            feature = l_train_f[i];
            distance += (l_train_v[i] * l_model_vec[feature]) >> 24;
        }
        distance *= class;

        if (distance < 16777216) {
            di = eta_gamma * class;
            for (i = start; i < stop; i++) {
                feature = l_train_f[i];
                l_temp = (di * l_train_v[i]) >> 24;
                mv_temp = l_model_vec[feature] + l_temp;
                l_temp = (eta_gamma * l_feat_deg_recip[feature]) >> 24;
                l_model_vec[feature] = (mv_temp * (16777216 - l_temp)) >> 24;
            }
        } else {
            for (i = start; i < stop; i++) {
                feature = l_train_f[i];
                mv_temp = l_model_vec[feature];
                l_temp = (eta_gamma * l_feat_deg_recip[feature]) >> 24;
                l_model_vec[feature] = (mv_temp * (16777216 - l_temp)) >> 24;
            }
        }
    }
}