//
// Created by Brian Page on 2020-04-09.
//

#include "include/sgd.h"

void update_clusters(long n, long dest, long beta_gamma) {
    long* l_model_vec = model_vec[n];
    long* r_model_vec = model_vec[dest];

    for (long j = 0; j < featureSetSize; j++) {
        REMOTE_ADD(&r_model_vec[j], (lambda * l_model_vec[j]) >> 24);
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
            for (long t = 0; t < cluster_count; t++){
                if (t != n){
                    cilk_spawn update_clusters(n, t, beta_gamma);
                }
            }
            //cilk_spawn update_clusters(n, beta_gamma);
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

void stripped_train(long thread_id, long eta_gamma) {
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
        for (i = start; i < stop; i++) {
            feature = train_f_stripped[i];
            distance += (train_v_stripped[i] * model_vec_stripped[feature]) >> 24;
        }
        distance *= class;

        if (distance < 16777216) {
            di = eta_gamma * class;
            for (i = start; i < stop; i++) {
                feature = train_f_stripped[i];
                l_temp = (di * train_v_stripped[i]) >> 24;
                mv_temp = model_vec_stripped[feature] + l_temp;
                l_temp = (eta_gamma * feat_deg_recip_stripped[feature]) >> 24;
                model_vec_stripped[feature] = (mv_temp * (16777216 - l_temp)) >> 24;
            }
        } else {
            for (i = start; i < stop; i++) {
                feature = train_f_stripped[i];
                mv_temp = model_vec_stripped[feature];
                l_temp = (eta_gamma * feat_deg_recip_stripped[feature]) >> 24;
                model_vec_stripped[feature] = (mv_temp * (16777216 - l_temp)) >> 24;
            }
        }
        thread_id += threads_per_cluster;
    }
}

void stripped_train_no_epochs(long tid) {
    long eta_gamma = eta;
    long start;
    long stop;
    long class;
    long feature;
    long distance;
    long di;
    long i;
    long l_temp;
    long mv_temp;
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

            distance = 0;
            start = train_s_stripped[sample];
            stop = train_s_stripped[sample + 1];
            class = train_c_stripped[sample];
            for (i = start; i < stop; i++) {
                feature = train_f_stripped[i];
                distance += (train_v_stripped[i] * model_vec_stripped[feature]) >> 24;
            }
            distance *= class;

            if (distance < 16777216) {
                di = eta_gamma * class;
                for (i = start; i < stop; i++) {
                    feature = train_f_stripped[i];
                    l_temp = (di * train_v_stripped[i]) >> 24;
                    mv_temp = model_vec_stripped[feature] + l_temp;
                    l_temp = (eta_gamma * feat_deg_recip_stripped[feature]) >> 24;
                    model_vec_stripped[feature] = (mv_temp * (16777216 - l_temp)) >> 24;
                }
            } else {
                for (i = start; i < stop; i++) {
                    feature = train_f_stripped[i];
                    mv_temp = model_vec_stripped[feature];
                    l_temp = (eta_gamma * feat_deg_recip_stripped[feature]) >> 24;
                    model_vec_stripped[feature] = (mv_temp * (16777216 - l_temp)) >> 24;
                }
            }
            thread_id += threads_per_cluster;
        }

        eta_gamma *= gamma;
        eta_gamma >>= 24;
        thread_id = tid;
    }
}

void stripped_train_no_epochs(long tid) {
    long eta_gamma = eta;
    long start;
    long stop;
    long class;
    long feature;
    long distance;
    long di;
    long i;
    long l_temp;
    long mv_temp;
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

            distance = 0;
            start = train_s_stripped[sample];
            stop = train_s_stripped[sample + 1];
            class = train_c_stripped[sample];
            for (i = start; i < stop; i++) {
                feature = train_f_stripped[i];
                distance += (train_v_stripped[i] * model_vec_stripped[feature]) >> 24;
            }
            distance *= class;

            if (distance < 16777216) {
                di = eta_gamma * class;
                for (i = start; i < stop; i++) {
                    feature = train_f_stripped[i];
                    l_temp = (di * train_v_stripped[i]) >> 24;
                    mv_temp = model_vec_stripped[feature] + l_temp;
                    l_temp = (eta_gamma * feat_deg_recip_stripped[feature]) >> 24;
                    model_vec_stripped[feature] = (mv_temp * (16777216 - l_temp)) >> 24;
                }
            } else {
                for (i = start; i < stop; i++) {
                    feature = train_f_stripped[i];
                    mv_temp = model_vec_stripped[feature];
                    l_temp = (eta_gamma * feat_deg_recip_stripped[feature]) >> 24;
                    model_vec_stripped[feature] = (mv_temp * (16777216 - l_temp)) >> 24;
                }
            }
            thread_id += threads_per_cluster;
        }

        eta_gamma *= gamma;
        eta_gamma >>= 24;
        thread_id = tid;
    }
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
    long l_temp;
    long mv_temp;
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

            distance = 0;
            start = train_s_stripped[sample];
            stop = train_s_stripped[sample + 1];
            class = train_c_stripped[sample];
            di = eta_gamma * class;
            for (i = start; i < stop; i++) {
                REMOTE_ADD(&spawned_run_notify[i % system_size][tid],1);
                feature = train_f_stripped[i];
                train_v_val = train_v_stripped[i];
                model_vec_val = model_vec_stripped[feature]
                distance += (train_v_val * model_vec_val) >> 24;
                cilk_spawn child_train(i % system_size, tid, feature, train_v_val, model_vec_val, eta_gamma, di, e);
            }
            distance *= class;

            for (i = 0; i < system_size; i++){
                REMOTE_ADD(spawned_run_notify[i][tid], distance);
            }
            cilk_sync;
            for (i = 0; i < system_size; i++){
                REMOTE_ADD(spawned_run_notify[i][tid], -distance);
            }
            thread_id += threads_per_cluster;
        }

        eta_gamma *= gamma;
        eta_gamma >>= 24;
        thread_id = tid;
    }
}

void child_train(long n, long tid, long feature, long train_v_val, long model_vec_val, long eta_gamma, long di, long epoch){
    long di,
        l_temp,
        mv_temp,
        eta_deg = 16777216 - ((eta_gamma * feat_deg_recip_stripped[feature]) >> 24);

    if (epoch < 5) {
        l_temp = (di * train_v_val) >> 24;
        mv_temp = model_vec_val + l_temp;
        while(spawned_run_notify[n][tid] == 0){
            RESCHEDULE();
        }
        if (spawned_run_notify[n][tid] < 16777216) {
            model_vec_stripped[feature] = (mv_temp * eta_deg) >> 24;
        } else {
            model_vec_stripped[feature] = (model_vec_val * eta_deg) >> 24;
        }
    } else {
        while(spawned_run_notify[n][tid] == 0){
            RESCHEDULE();
        }
        if (spawned_run_notify[n][tid] < 16777216) {
            l_temp = (di * train_v_val) >> 24;
            mv_temp = model_vec_val + l_temp;
            model_vec_stripped[feature] = (mv_temp * eta_deg) >> 24;
        } else {
            model_vec_stripped[feature] = (model_vec_val * eta_deg) >> 24;
        }
    }
}