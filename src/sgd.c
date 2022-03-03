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
    //printf("cluster_samples[%ld]: %ld, end_sample_count = %ld\n", n, cluster_samples[n], end_sample_count);
    //fflush(stdout);

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

    //printf("%ld/%ld Done\n", n, thread_id);
    //fflush(stdout);
}

void stripped_train_no_epochs_spawn_children(long tid) {
    long* local_train_c = train_c[NODE_ID()];
    long eta_gamma = eta;
    long class;
    long di;
    unsigned long rand_state = 1337 + (1337 * tid);
    unsigned long sample;
    long thread_id = tid;

    for (long e = 0; e < epochs; e++) {
        while (thread_id < train_sample_count) {
            sample = rand_state;
            sample ^= sample >> 12; // a
            sample ^= sample << 25; // b
            sample ^= sample >> 27; // c
            rand_state = sample;
            sample *= UINT64_C(0x2545F4914F6CDD1D);
            sample %= train_sample_count;

            class = local_train_c[sample];
            for (long n = 0; n < node_count; n++) {
                cilk_migrate_hint(&train_v[n]);
                cilk_spawn get_partial_gradient(n, tid, sample);
            }
            cilk_sync;

            //for (long n = 0; n < node_count; n++) {
            //    for (long i = train_s[n][sample]; i < train_s[n][sample + 1]; i++) {
            //        gradients[tid] += (train_v[n][i] * model_vec_stripped[train_f[n][i]]) >> 24;
            //    }
            //}

            gradients[tid] *= class;

            if (gradients[tid] < 16777216) {
                di = eta_gamma * class;
                for (long n = 0; n < node_count; n++) {
                    cilk_migrate_hint(&train_v[n]);
                    cilk_spawn child_train_neg(n, sample, eta_gamma, di);
                }
            } else {
                for (long n = 0; n < node_count; n++) {
                    cilk_migrate_hint(&train_v[n]);
                    cilk_spawn child_train_pos(n, sample, eta_gamma);
                }
            }

/*
            if (gradients[tid] < 16777216) {
                di = eta_gamma * class;
                for (long n = 0; n < node_count; n++) {
                    long feature, l_temp, wv_temp;
                    for (long i = train_s[n][sample]; i < train_s[n][sample+1]; i++) {
                        feature = train_f[n][i];
                        l_temp = (di * train_v[n][i]) >> 24;
                        wv_temp = model_vec_stripped[feature] + l_temp;
                        l_temp = (eta_gamma * feat_deg_recip[n][feature]) >> 24;
                        model_vec_stripped[feature] = (wv_temp * (16777216 - l_temp)) >> 24;
                    }
                }
            } else {
                for (long n = 0; n < node_count; n++) {
                    long feature, l_temp, wv_temp;
                    for (long i = train_s[n][sample]; i < train_s[n][sample+1]; i++) {
                        feature = train_f[n][i];
                        wv_temp = model_vec_stripped[feature];
                        l_temp = (eta_gamma * feat_deg_recip[n][feature]) >> 24;
                        model_vec_stripped[feature] = (wv_temp * (16777216 - l_temp)) >> 24;
                    }
                }
            }
*/
            gradients[tid] = 0;
            thread_id += threads_per_cluster;
        }

        eta_gamma *= gamma;
        eta_gamma >>= 24;
        thread_id = tid;
    }
}

void get_partial_gradient(long n, long tid, long sample){
    long feature;
    long* local_train_f = train_f[n];
    long* local_train_v = train_v[n];
    for (long i = train_s[n][sample]; i < train_s[n][sample+1]; i++) {
        feature = local_train_f[i];
        //REMOTE_ADD(&gradients[tid], (local_train_v[i] * model_vec_stripped[feature]) >> 24);
        ATOMIC_ADDM(&gradients[tid], ((train_v[n][i] * model_vec_stripped[feature]) >> 24));
    }
}

void child_train_pos(long n, long sample, long eta_gamma) {
    long feature, l_temp, wv_temp, mv_orig, mv_new;
    long* local_train_f = train_f[n];
    long* local_feat_deg = feat_deg_recip[n];

    for (long i = train_s[n][sample]; i < train_s[n][sample+1]; i++) {
        feature = local_train_f[i];
        mv_orig = model_vec_stripped[feature];
        l_temp = (eta_gamma * local_feat_deg[feature]) >> 24;
        mv_new = (mv_orig * (16777216 - l_temp)) >> 24;
        //REMOTE_ADD(&model_vec_stripped[feature], mv_new - mv_orig);
        ATOMIC_ADDM(&model_vec_stripped[feature], mv_new - mv_orig);
    }
    /*
    for (long i = train_s[n][sample]; i < train_s[n][sample+1]; i++) {
        feature = local_train_f[i];
        wv_temp = model_vec_stripped[feature];
        l_temp = (eta_gamma * local_feat_deg[feature]) >> 24;
        model_vec_stripped[feature] = (wv_temp * (16777216 - l_temp)) >> 24;
    }
    */
}

void child_train_neg(long n, long sample, long eta_gamma, long di) {
    long feature, l_temp, wv_temp, mv_orig, mv_new;
    long* local_train_f = train_f[n];
    long* local_train_v = train_v[n];
    long* local_feat_deg = feat_deg_recip[n];

    for (long i = train_s[n][sample]; i < train_s[n][sample+1]; i++) {
        feature = local_train_f[i];
        l_temp = (di * local_train_v[i]) >> 24;
        mv_orig = model_vec_stripped[feature] + l_temp;
        l_temp = (eta_gamma * local_feat_deg[feature]) >> 24;
        mv_new = (mv_orig * (16777216 - l_temp)) >> 24;
        //REMOTE_ADD(&model_vec_stripped[feature], mv_new - mv_orig);
        ATOMIC_ADDM(&model_vec_stripped[feature], mv_new - mv_orig);
    }
    /*
    for (long i = train_s[n][sample]; i < train_s[n][sample+1]; i++) {
        feature = local_train_f[i];
        l_temp = (di * local_train_v[i]) >> 24;
        wv_temp = model_vec_stripped[feature] + l_temp;
        l_temp = (eta_gamma * local_feat_deg[feature]) >> 24;
        model_vec_stripped[feature] = (wv_temp * (16777216 - l_temp)) >> 24;
    }
    */
}