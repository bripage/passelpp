//
// Created by Brian Page on 2020-04-09.
//

#include "include/sgd.h"
void downstream_update(long i, long n, long d){
    long* l_working_vec = working_vec[n];
    long* d_working_vec = working_vec[d];
    long* d_model_vec = model_vec[d];
    long l_tmp;
    //for (long j = i; j < featureSetSize; j+=16) {
    for (long j = 0; j < featureSetSize; j++) {
        l_tmp = l_working_vec[j];
        REMOTE_ADD(&d_model_vec[j], (lambda * l_tmp) >> 24);
        REMOTE_ADD(&d_working_vec[j], (lambda * l_tmp) >> 24);
    }
    //printf("downstream thread %ld done on %ld\n", i, n);
    //fflush(stdout);
}
void upstream_update(long i, long n, long u, long beta_gamma){
    long* l_working_vec = working_vec[n];
    long* u_working_vec = working_vec[u];
    long* l_model_vec = model_vec[n];
    long l_temp, wv_temp;
    //for (long j = i; j < featureSetSize; j+=16) {
    for (long j = 0; j < featureSetSize; j++) {
        l_temp = l_model_vec[j];
        l_model_vec[j] = 0;
        wv_temp = (beta_gamma * (l_working_vec[j] - l_temp)) >> 24;
        REMOTE_ADD(&u_working_vec[j], wv_temp);
        wv_temp += (one_min_lambda * l_temp) >> 24;
        l_model_vec[j] += wv_temp;
        l_working_vec[j] = wv_temp;
    }
    //printf("upstream thread %ld done on %ld\n", i, n);
    //fflush(stdout);
}

void update_clusters(long updater_id, long updater_mig_type, long beta_gamma) {
    if (updater_mig_type == 1) {
        while (epoch_running[NODE_ID()] > 0) {
            long n = NODE_ID();
            //printf("update agent STARTING on %ld (%ld)\n", n, epoch_running[NODE_ID()]);
            //fflush(stdout);
            for (long i = 0; i < 1; i++) {
                cilk_migrate_hint(&model_vec[n]);
                cilk_spawn upstream_update(i, n, upstream[n], beta_gamma);
            }
            for (long i = 0; i < 1; i++) {
                cilk_migrate_hint(&working_vec[upstream[n]]);
                cilk_spawn downstream_update(i, upstream[n], n);
            }
            cilk_sync;
            updater_last_node[0][updater_id] = upstream[n];
            //printf("update agent DONE on %ld -> %ld\n", n, upstream[n]);
            //fflush(stdout);
            MIGRATE(&model_vec[upstream[n]]);
        }
    } else if (updater_mig_type == 2) {
        while (epoch_running[NODE_ID()] > 0) {
            long n = NODE_ID();
            for (long i = 0; i < 16; i++) {
                cilk_migrate_hint(&model_vec[n]);
                cilk_spawn upstream_update(i, n, downstream[n], beta_gamma);
                cilk_migrate_hint(&working_vec[downstream[n]]);
                cilk_spawn downstream_update(i, downstream[n], n);
            }
            cilk_sync;
            MIGRATE(&model_vec[downstream[n]]);
        }
    } else if (updater_mig_type == 3) {
        unsigned long rand_state = 13377331 + (1337 * NODE_ID()); // This will ran once at start.
                                                                  // Where node_id is the node the agent was spawned on
        while (epoch_running[NODE_ID()] > 0) {
            long n = NODE_ID();
            for (long i = 0; i < 16; i++) {
                cilk_migrate_hint(&model_vec[n]);
                cilk_spawn upstream_update(i, n, upstream[n], beta_gamma);
                cilk_migrate_hint(&working_vec[upstream[n]]);
                cilk_spawn downstream_update(i, upstream[n], n);
            }
            cilk_sync;

            unsigned long target;
            do {
                target = rand_state;
                target ^= target >> 12; // a
                target ^= target << 25; // b
                target ^= target >> 27; // c
                rand_state = target;
                target *= UINT64_C(0x2545F4914F6CDD1D);
                target %= cluster_count;
            } while (target != n);
            MIGRATE(&model_vec[target]);
        }
    }

    //printf("update agent exiting \n");
    //fflush(stdout);
}

void train_spawn(long n, long epoch, long eta_gamma, long beta_gamma){
    long end_sample_count = cluster_samples[n] * epoch;
    for (long i = 0; i < threads_per_cluster; i++) {
        cilk_migrate_hint(&model_vec[n]);
        cilk_spawn train(i, n, eta_gamma, beta_gamma, end_sample_count);
    }
}

void train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count) {
    //printf("train %ld on %ld start\n", thread_id, n);
    //fflush(stdout);
    cilk_spawn update_clusters(n, 1, beta_gamma);
    long* l_working_vec = working_vec[n];
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

    //while (ATOMIC_ADDMS(&total_evaluated_sample_count[n],1) < end_sample_count) {
    for (sample = thread_id; sample < cluster_samples[n]; sample += threads_per_cluster){
        //printf("%ld\n",total_evaluated_sample_count[n]);
        //fflush(stdout);

        //sample = rand_state;
        //sample ^= sample >> 12; // a
        //sample ^= sample << 25; // b
        //sample ^= sample >> 27; // c
        //rand_state = sample;
        //sample *= UINT64_C(0x2545F4914F6CDD1D);
        //sample %= cluster_samples[n];

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

    if (thread_id == 0) {
        for (i = 0; i < cluster_count; i++) {
            REMOTE_ADD(&epoch_running[i], -1);
        }
        //printf("cluster %ld done\n", n);
        //fflush(stdout);
    }
    //printf("train %ld on %ld done\n", thread_id, n);
    //fflush(stdout);

}