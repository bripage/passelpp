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

void train_spawn(long n, long type, long eta_gamma, long beta_gamma){
    if (!type){ // type 0 = using_clusters
        for (long i = 0; i < threads_per_cluster; i++) {
            cilk_migrate_hint(&model_vec[n]);
            cilk_spawn train(i, n, eta_gamma, beta_gamma);
        }
    } else { // type 0 = clusterless feature partitioned
        //printf("clusterless spawning on %ld\n", n);
        //fflush(stdout);
        for (long i = n * threads_per_cluster; i < (n + 1) * threads_per_cluster; i++) {
            //printf("spawning thread %ld\n", i);
            //fflush(stdout);
            cilk_migrate_hint(&model_vec[n]);
            cilk_spawn featured_partitioned_train(i, n);
        }
    }
    cilk_sync;
}

void train(long thread_id, long n, long eta_gamma, long beta_gamma) {
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
        while (ATOMIC_ADDM(&total_evaluated_sample_count[n], 1) < cluster_samples[n]) {
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
        while (ATOMIC_ADDM(&total_evaluated_sample_count[n], 1) < cluster_samples[n]) {
            if (token[n] == 1){
                if (ATOMIC_ADDM(&samples_since_token[n], 1) == update_period){
                    printf("%ld updating %ld\n", n, upstream[n]);
                    fflush(stdout);
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
                    ATOMIC_SWAP(&token[upstream[n]], 1);   // pass token to upstream cluster
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
}

void featured_partitioned_train(long tid, long start_node) {
    //printf("Thread %ld on %ld STARTING\n", tid, start_node);
    //fflush(stdout);
    long eta_gamma = eta;
    long class;
    long di;
    unsigned long rand_state = 1337 + (1337 * tid);
    unsigned long sample;
    long thread_id = tid;
    long gradient;
    long current_node = start_node;
    long l_temp, wv_temp, feature;
    for (long e = 0; e < epochs; e++) {
        //printf("Starting Epoch %ld\n", e);
        //fflush(stdout);
        while (thread_id < train_sample_count) {
            //printf("e = %ld, count = %ld\n", e, thread_id);
            //fflush(stdout);
            gradient = 0;
            sample = rand_state;
            sample ^= sample >> 12; // a
            sample ^= sample << 25; // b
            sample ^= sample >> 27; // c
            rand_state = sample;
            sample *= UINT64_C(0x2545F4914F6CDD1D);
            sample %= train_sample_count;

            class = train_c[current_node][sample];
            //printf("train_c[%ld][%ld] = %ld\n", current_node, sample, class);
            //fflush(stdout);
            do {
                //long feature;
                for (long i = train_s[current_node][sample]; i < train_s[current_node][sample+1]; i++) {
                    feature = train_f[current_node][i];
                    gradient += (train_v[current_node][i] * model_vec[current_node][feature]) >> 24;
                }
                //printf("gradient_%ld = %ld\n", current_node, gradient);
                //fflush(stdout);
                current_node = up[current_node];
                //printf("current_node = %ld\n", current_node);
                //fflush(stdout);
            } while(current_node != start_node);
            MIGRATE(&model_vec[start_node]);
            //printf("back at start node %ld\n", start_node);
            //fflush(stdout);
            gradient *= class;
            //printf("gradient = %ld\n", gradient);
            //fflush(stdout);

            if (gradient < 16777216) {
                di = eta_gamma * class;
                do {
                    //long l_temp, wv_temp, feature;
                    for (long i = train_s[current_node][sample]; i < train_s[current_node][sample+1]; i++) {
                        feature = train_f[current_node][i];
                        l_temp = (di * train_v[current_node][i]) >> 24;
                        wv_temp = model_vec[current_node][feature] + l_temp;
                        l_temp = (eta_gamma * feat_deg_recip[current_node][feature]) >> 24;
                        model_vec[current_node][feature] = (wv_temp * (16777216 - l_temp)) >> 24;
                    }
                    current_node = up[current_node];
                } while(current_node != start_node);
            } else {
                do {
                    //long l_temp, wv_temp, feature;
                    for (long i = train_s[current_node][sample]; i < train_s[current_node][sample+1]; i++) {
                        feature = train_f[current_node][i];
                        wv_temp = model_vec[current_node][feature];
                        l_temp = (eta_gamma * feat_deg_recip[current_node][feature]) >> 24;
                        model_vec[current_node][feature] = (wv_temp * (16777216 - l_temp)) >> 24;
                    }
                    current_node = up[current_node];
                } while(current_node != start_node);
            }
            thread_id += threads_per_cluster;
        }

        eta_gamma *= gamma;
        eta_gamma >>= 24;
        thread_id = tid;
    }
}
/*
void get_partial_gradient(long n, long tid, long sample){
    long feature;
    long* local_train_f = train_f[n];
    long* local_train_v = train_v[n];
    long* mvec = model_vec[n];
    long partial_gradient = 0;

    for (long i = train_s[n][sample]; i < train_s[n][sample+1]; i++) {
        feature = local_train_f[i];
        partial_gradient += (local_train_v[i] * mvec[feature]) >> 24;
    }
    //ATOMIC_ADDM(&gradients[tid], partial_gradient);
    REMOTE_ADD(&gradients[tid], partial_gradient);
}

void child_train_pos(long n, long sample, long eta_gamma) {
    long feature, l_temp, wv_temp;
    long* local_train_f = train_f[n];
    long* mvec = model_vec[n];
    long* fddr = feat_deg_recip[n];

    for (long i = train_s[n][sample]; i < train_s[n][sample+1]; i++) {
        feature = local_train_f[i];
        wv_temp = mvec[feature];
        l_temp = (eta_gamma * fddr[feature]) >> 24;
        mvec[feature] = (wv_temp * (16777216 - l_temp)) >> 24;
    }

}

void child_train_neg(long n, long sample, long eta_gamma, long di) {
    long feature, l_temp, wv_temp;
    long* local_train_f = train_f[n];
    long* local_train_v = train_v[n];
    long* mvec = model_vec[n];
    long* fddr = feat_deg_recip[n];

    for (long i = train_s[n][sample]; i < train_s[n][sample+1]; i++) {
        feature = local_train_f[i];
        l_temp = (di * local_train_v[i]) >> 24;
        wv_temp = mvec[feature] + l_temp;
        l_temp = (eta_gamma * fddr[feature]) >> 24;
        mvec[feature] = (wv_temp * (16777216 - l_temp)) >> 24;
    }
}
 */