//
// Created by Brian Page on 2020-04-09.
//
#include "include/sgd.h"

void downstream_update(long i, long n, long d){
    long* l_working_vec = working_vec[n];
    long* d_working_vec = working_vec[d];
    long* d_model_vec = model_vec[d];
    long l_temp;
    for (long j = i; j < featureSetSize; j+=16) {
        l_temp = l_working_vec[j];
        REMOTE_ADD(&d_model_vec[j], (lambda * l_temp) >> 24);
        REMOTE_ADD(&d_working_vec[j], (lambda * l_temp) >> 24);
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
    printf("cluster_samples[%ld]: %ld, end_sample_count = %ld\n", n, cluster_samples[n], end_sample_count);
    fflush(stdout);

    for (long i = 0; i < threads_per_cluster; i++) {
        cilk_migrate_hint(&model_vec[n]);
        cilk_spawn train(i, n, eta_gamma, beta_gamma, end_sample_count);
    }
}

void train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count) {
    //printf("%ld/%ld Starting on %ld\n", n, thread_id, NODE_ID());
    //fflush(stdout);
    long* l_working_vec = working_vec[n];
    long* u_working_vec = working_vec[upstream[n]];
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
    long wv_temp;
    unsigned long rand_state = 1337 + (1337 * thread_id);
    unsigned long sample;

    if (cluster_count == 1){
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
                distance += (l_train_v[i] * l_model_vec[feature]) >> 24;
            }
            distance *= class;

            if (distance < 16777216) {
                di = eta_gamma * class;
                for (i = start; i < stop; i++) {
                    feature = l_train_f[i];
                    l_temp = (di * l_train_v[i]) >> 24;
                    wv_temp = l_model_vec[feature] + l_temp;
                    l_temp = (eta_gamma * l_feat_deg_recip[feature]) >> 24;
                    l_model_vec[feature] = (wv_temp * (16777216 - l_temp)) >> 24;
                }
            } else {
                for (i = start; i < stop; i++) {
                    feature = l_train_f[i];
                    wv_temp = l_model_vec[feature];
                    l_temp = (eta_gamma * l_feat_deg_recip[feature]) >> 24;
                    l_model_vec[feature] = (wv_temp * (16777216 - l_temp)) >> 24;
                }
            }
        }
    } else {
        while (ATOMIC_ADDMS(&total_evaluated_sample_count[n], 1) < end_sample_count) {
            if (token[n] == 1){
                if (ATOMIC_ADDM(&samples_since_token[n], 1) == update_period){
                    ATOMIC_SWAP(&token[n], 0);
                    for (i = 0; i < 16; i++) {
                        cilk_migrate_hint(&l_model_vec);
                        cilk_spawn upstream_update(i, n, upstream[n], beta_gamma);
                    }
                    for (i = 0; i < 16; i++) {
                        cilk_migrate_hint(&u_working_vec);
                        cilk_spawn downstream_update(i, upstream[n], n);
                    }
                    cilk_sync;
                    token[upstream[n]] = 1;   // pass token to upstream cluster
                    ATOMIC_SWAP(&samples_since_token[n], 0);
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

    printf("%ld/%ld Done\n", n, thread_id);
    fflush(stdout);
}

void stripped_train_no_epochs_spawn_children(long tid) {
    long eta_gamma = eta;
    long start;
    long stop;
    long class;
    long feature;
    long distance;
    long di;
    long i;
    unsigned long rand_state = 1337 + (1337 * tid);
    unsigned long sample;
    long thread_id = tid;
    //long l_temp;
    //long mv_temp;

    for (long e = 0; e < epochs; e++) {
        while (thread_id < train_sample_count) {
            sample = rand_state;
            sample ^= sample >> 12; // a
            sample ^= sample << 25; // b
            sample ^= sample >> 27; // c
            rand_state = sample;
            sample *= UINT64_C(0x2545F4914F6CDD1D);
            sample %= train_sample_count;

            distance = 0;
            start = train_s_stripped[sample];
            stop = train_s_stripped[sample + 1];
            class = train_c_stripped[sample];
            di = eta_gamma * class;
            /*
            for (i = start; i < stop; i++) {
                feature = train_f_stripped[i];
                distance += (train_v_stripped[i] * model_vec_stripped[feature]) >> 24;
            }
                         distance *= class;

            if (distance < 16777216){
                for (i = start; i < stop; i++) {
                    cilk_migrate_hint(&train_v_stripped[i]);
                    cilk_spawn child_train_neg_gradient(i, eta_gamma, di);
                }
            } else {
                for (i = start; i < stop; i++) {
                    cilk_migrate_hint(&train_v_stripped[i]);
                    cilk_spawn child_train_pos_gradient(i, eta_gamma);
                }
            }
            */
            for (long n = 0; n < node_count; n++) {
                for (i = start + n; i < stop; i += node_count) {
                    feature = train_f_stripped[i];
                    distance += (train_v_stripped[i] * model_vec_stripped[feature]) >> 24;
                }
            }
            distance *= class;

            if (distance < 16777216) {
                cilk_migrate_hint(&train_v_stripped[start]);
                cilk_spawn  child_train_neg_2d(start, stop, eta_gamma, di);
            } else {
                cilk_migrate_hint(&train_v_stripped[start]);
                cilk_spawn child_train_pos_2d(start, stop, eta_gamma);
            }

            thread_id += threads_per_cluster;
        }

        eta_gamma *= gamma;
        eta_gamma >>= 24;
        thread_id = tid;
    }
}

void child_train_pos_gradient(long i, long eta_gamma) {
    long feature = train_f_stripped[i];
    long mv_temp = model_vec_stripped[feature];
    long l_temp = (eta_gamma * feat_deg_recip_stripped[feature]) >> 24;
    model_vec_stripped[feature] = (mv_temp * (16777216 - l_temp)) >> 24;
}


void child_train_neg_gradient(long i, long eta_gamma, long di) {
    long feature = train_f_stripped[i];
    long l_temp = (di * train_v_stripped[i]) >> 24;
    long mv_temp = model_vec_stripped[feature] + l_temp;
    l_temp = (eta_gamma * feat_deg_recip_stripped[feature]) >> 24;
    model_vec_stripped[feature] = (mv_temp * (16777216 - l_temp)) >> 24;
}

void child_train_pos_2d(long start, long stop, long eta_gamma) {
    long feature, l_temp, mv_orig, mv_new;
    for (long i = start; i < stop; i++) {
        feature = train_f_stripped[i];
        mv_orig = model_vec_stripped[feature];
        l_temp = (eta_gamma * feat_deg_recip_stripped[feature]) >> 24;
        mv_new = (mv_orig * (16777216 - l_temp)) >> 24;
        REMOTE_ADD(&model_vec_stripped[feature], mv_new - mv_orig);
    }
}

void child_train_neg_2d(long start, long stop, long eta_gamma, long di) {
    long feature, l_temp, mv_orig, mv_new;
    for (long i = start; i < stop; i++) {
        feature = train_f_stripped[i];
        l_temp = (di * train_v_stripped[i]) >> 24;
        mv_orig = model_vec_stripped[feature] + l_temp;
        l_temp = (eta_gamma * feat_deg_recip_stripped[feature]) >> 24;
        mv_new = (mv_orig * (16777216 - l_temp)) >> 24;
        REMOTE_ADD(&model_vec_stripped[feature], mv_new - mv_orig);
    }
}