//
// Created by Brian Page on 2020-04-09.
//

#include "include/sgd.h"
void downstream_update(long i, long n, long d){
    long* l_working_vec = working_vec[n];
    long* d_working_vec = working_vec[d];
    long* d_model_vec = model_vec[d];
    long l_tmp;
    for (long j = i; j < featureSetSize; j+=16) {
        l_tmp = l_working_vec[j];
        REMOTE_ADD(&d_model_vec[j], (lambda * l_tmp) >> 24);
        REMOTE_ADD(&d_working_vec[j], (lambda * l_tmp) >> 24);
    }
}
void upstream_update(long i, long n, long u, long beta_gamma){
    long* l_working_vec = working_vec[n];
    long* u_working_vec = working_vec[u];
    long* l_model_vec = model_vec[n];
    long l_temp, wv_temp;
    for (long j = i; j < featureSetSize; j+=16) {
        l_temp = l_model_vec[j];
        l_model_vec[j] = 0;
        wv_temp = (beta_gamma * (l_working_vec[j] - l_temp)) >> 24;
        REMOTE_ADD(&u_working_vec[j], wv_temp);
        wv_temp += (one_min_lambda * l_temp) >> 24;
        l_model_vec[j] += wv_temp;
        l_working_vec[j] = wv_temp;
    }
}

void train_spawn(long n, long epoch, long eta_gamma, long beta_gamma){
    long end_sample_count = cluster_samples[n] * epoch;
    for (long i = 0; i < threads_per_cluster; i++) {
        cilk_migrate_hint(&model_vec[n]);
        cilk_spawn train(i, n, eta_gamma, beta_gamma, end_sample_count);
    }
    cilk_sync;
}

void train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count) {
    long* l_working_vec = working_vec[n];
    long* u_working_vec = working_vec[upstream[n]];
    long* l_model_vec = model_vec[n];
    //long* l_update_vec = update_vec[n];
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
    long wv_temp;
    unsigned long rand_state = 1337 + (1337 * thread_id);
    unsigned long sample;
    long utc;
    long dtc;
    long rtc;

    //long non_zeros_per_cluster = 2 * ceil((double) total_train_points / (double) cluster_count);

    if (cluster_count == 1) {
        while (ATOMIC_ADDMS(&total_evaluated_sample_count[n],1) < end_sample_count) {
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
                distance += (l_train_v[i] * l_working_vec[feature]) >> 24;
            }
            distance *= class;

            if (distance < 16777216) {
                di = eta_gamma * class;
                for (i = start; i < stop; i++) {
                    feature = l_train_f[i];
                    l_temp = (di * l_train_v[i]) >> 24;
                    wv_temp = l_working_vec[feature] + l_temp;
                    l_temp = (eta_gamma * l_feat_deg_recip[feature]) >> 24;
                    l_working_vec[feature] = (wv_temp * (16777216 - l_temp)) >> 24;
                }
            }  else {
                for (i = start; i < stop; i++) {
                    feature = l_train_f[i];
                    wv_temp = l_working_vec[feature];
                    l_temp = (eta_gamma * l_feat_deg_recip[feature]) >> 24;
                    l_working_vec[feature] = (wv_temp * (16777216 - l_temp)) >> 24;
                }
            }
        }
    } else if (token_type > 3){
        while (ATOMIC_ADDMS(&total_evaluated_sample_count[n],1) < end_sample_count) {
            utc = ATOMIC_SWAP(&up_token[n], 0);
            if (utc > 0) {
                utc -= 1;
                for (i = 0; i < 16; i++) {
                    cilk_migrate_hint(&l_model_vec);
                    cilk_spawn upstream_update(i, n, upstream[n], beta_gamma);
                    cilk_migrate_hint(&u_working_vec);
                    cilk_spawn downstream_update(i, upstream[n], n);
                }
                cilk_sync;
                REMOTE_ADD(&up_token[upstream[n]], 1);
                ATOMIC_SWAP(up_token[n], utc);
            }

            dtc = ATOMIC_SWAP(&up_token[n], 0);
            if (dtc > 0) {
                dtc -= 1;
                for (i = 0; i < 16; i++) {
                    cilk_migrate_hint(&l_model_vec);
                    cilk_spawn upstream_update(i, n, downstream[n], beta_gamma);
                    cilk_migrate_hint(&u_working_vec);
                    cilk_spawn downstream_update(i, downstream[n], n);
                }
                cilk_sync;
                REMOTE_ADD(&up_token[upstream[n]], 1);
                ATOMIC_SWAP(up_token[n], utc);
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
                distance += (l_train_v[i] * l_working_vec[feature]) >> 24;
            }
            distance *= class;

            if (distance < 16777216) {
                di = eta_gamma * class;
                for (i = start; i < stop; i++) {
                    feature = l_train_f[i];
                    l_temp = (di * l_train_v[i]) >> 24;
                    wv_temp = l_working_vec[feature] + l_temp;
                    l_temp = (eta_gamma * l_feat_deg_recip[feature]) >> 24;
                    l_working_vec[feature] = (wv_temp * (16777216 - l_temp)) >> 24;
                }
            } else {
                for (i = start; i < stop; i++) {
                    feature = l_train_f[i];
                    wv_temp = l_working_vec[feature];
                    l_temp = (eta_gamma * l_feat_deg_recip[feature]) >> 24;
                    l_working_vec[feature] = (wv_temp * (16777216 - l_temp)) >> 24;
                }
            }
        }
    } else {
        // performing updates that use random target determination
        while (ATOMIC_ADDMS(&total_evaluated_sample_count[n],1) < end_sample_count) {
            utc = ATOMIC_SWAP(&up_token[n], 0);
            if (utc > 0) {
                utc -= 1;
                for (long t = 0; t < cluster_count; t++){
                    if (t == n) continue;
                    rtc = ATOMIC_SWAP(&update_targets[t], 0);
                    if (rtc > 0){
                        rtc -= 1;
                        ATOMIC_SWAP(update_targets[i], rtc);

                        for (i = 0; i < 16; i++) {
                            cilk_migrate_hint(&l_model_vec);
                            cilk_spawn upstream_update(i, n, t, beta_gamma);
                            cilk_migrate_hint(&u_working_vec);
                            cilk_spawn downstream_update(i, t, n);
                        }
                        cilk_sync;

                        do {
                            sample = sample;
                            sample ^= sample >> 12; // a
                            sample ^= sample << 25; // b
                            sample ^= sample >> 27; // c
                            sample = sample;
                            sample *= UINT64_C(0x2545F4914F6CDD1D);
                            dtc = sample % cluster_count;
                        } while (dtc != n);

                        REMOTE_ADD(&update_targets[dtc][n], 1);
                        REMOTE_ADD(&up_token[dtc], 1);
                        ATOMIC_SWAP(up_token[n], utc);
                    }
                }
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
                distance += (l_train_v[i] * l_working_vec[feature]) >> 24;
            }
            distance *= class;

            if (distance < 16777216) {
                di = eta_gamma * class;
                for (i = start; i < stop; i++) {
                    feature = l_train_f[i];
                    l_temp = (di * l_train_v[i]) >> 24;
                    wv_temp = l_working_vec[feature] + l_temp;
                    l_temp = (eta_gamma * l_feat_deg_recip[feature]) >> 24;
                    l_working_vec[feature] = (wv_temp * (16777216 - l_temp)) >> 24;
                }
            } else {
                for (i = start; i < stop; i++) {
                    feature = l_train_f[i];
                    wv_temp = l_working_vec[feature];
                    l_temp = (eta_gamma * l_feat_deg_recip[feature]) >> 24;
                    l_working_vec[feature] = (wv_temp * (16777216 - l_temp)) >> 24;
                }
            }
        }
    }
}