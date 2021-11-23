//
// Created by Brian Page on 2020-04-09.
//

#include "include/sgd.h"

void update_clusters(long n, long dest, long beta_gamma) {
    long* l_model_vec = model_vec[n];
    long* r_model_vec;
    //for (long i = 0; i < cluster_count; i++) {
    //    if (i != n) {
            r_model_vec = model_vec[dest];
            for (long j = l_mv_start[n]; j < l_mv_stop[n]; j++) {
                REMOTE_ADD(&r_model_vec[j], (lambda * l_model_vec[j]) >> 24);
                //model_vec[i][j] = model_vec[n][j];
            }
    //    }
    //}
}

void train_spawn(long n, long epoch, long eta_gamma, long beta_gamma){
    long end_sample_count = cluster_samples[n] * epoch;
    if (train_type == 0) {
        if (ignore_poor_samples) {
            for (long i = 0; i < threads_per_cluster; i++) {
                cilk_migrate_hint(&model_vec[n]);
                cilk_spawn neg_grad_drop_train(i, n, eta_gamma, beta_gamma, end_sample_count);
            }
        } else {
            for (long i = 0; i < threads_per_cluster; i++) {
                cilk_migrate_hint(&model_vec[n]);
                cilk_spawn train(i, n, eta_gamma, beta_gamma, end_sample_count);
            }
        }
    } else if (train_type == 1) {
        if (ignore_poor_samples) {
            for (long i = 0; i < threads_per_cluster; i++) {
                cilk_migrate_hint(&model_vec[n]);
                cilk_spawn cas_loop_and_neg_grad_drop_train(i, n, eta_gamma, beta_gamma, end_sample_count);
            }
        } else {
            for (long i = 0; i < threads_per_cluster; i++) {
                cilk_migrate_hint(&model_vec[n]);
                cilk_spawn cas_loop_train(i, n, eta_gamma, beta_gamma, end_sample_count);
            }
        }
    } else if (train_type == 2) {
        if (ignore_poor_samples) {
            for (long i = 0; i < threads_per_cluster; i++) {
                cilk_migrate_hint(&model_vec[n]);
                cilk_spawn cas_and_neg_grad_drop_train(i, n, eta_gamma, beta_gamma, end_sample_count);
            }
        } else {
            for (long i = 0; i < threads_per_cluster; i++) {
                cilk_migrate_hint(&model_vec[n]);
                cilk_spawn cas_drop_train(i, n, eta_gamma, beta_gamma, end_sample_count);
            }
        }
    } else if (train_type == 3) {
        if (ignore_poor_samples) {
            for (long i = 0; i < threads_per_cluster; i++) {
                cilk_migrate_hint(&model_vec[n]);
                cilk_spawn nudge_and_neg_grad_drop_train(i, n, eta_gamma, beta_gamma, end_sample_count);
            }
        } else {
            for (long i = 0; i < threads_per_cluster; i++) {
                cilk_migrate_hint(&model_vec[n]);
                cilk_spawn nudge_train(i, n, eta_gamma, beta_gamma, end_sample_count);
            }
        }
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

void neg_grad_drop_train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count) {
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
        }
    }
}

void cas_loop_train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count) {
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
    long l_temp1;
    long l_temp2;
    unsigned long rand_state = 1337 + (1337 * thread_id);
    unsigned long sample;
    long mv_original;
    long mv_new;
    long one_min_ltemp;

    while (ATOMIC_ADDMS(&total_evaluated_sample_count[n],1) < end_sample_count) {
        if (total_evaluated_sample_count[n] % update_period == 0) {
            for (long t = 0; t < cluster_count; t++) {
                if (t != n) {
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
                l_temp1 = (di * l_train_v[i]) >> 24;
                l_temp2 = (eta_gamma * l_feat_deg_recip[feature]) >> 24;
                one_min_ltemp = 16777216 - l_temp2;
                do {
                    mv_original = l_model_vec[feature];
                    mv_new = ((mv_original + l_temp1) * one_min_ltemp) >> 24;
                } while (ATOMIC_CAS(&l_model_vec[feature], mv_original, mv_new) != mv_original);
            }
        } else {
            for (i = start; i < stop; i++) {
                feature = l_train_f[i];
                l_temp1 = (eta_gamma * l_feat_deg_recip[feature]) >> 24;
                one_min_ltemp = 16777216 - l_temp1;
                do {
                    mv_original = l_model_vec[feature];
                    mv_new = (mv_original * one_min_ltemp) >> 24;
                } while (ATOMIC_CAS(&l_model_vec[feature], mv_original, mv_new) != mv_original);
            }
        }
    }
}

void cas_loop_and_neg_grad_drop_train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count) {
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
    long l_temp1;
    long l_temp2;
    unsigned long rand_state = 1337 + (1337 * thread_id);
    unsigned long sample;
    long mv_original;
    long mv_new;
    long one_min_ltemp;

    while (ATOMIC_ADDMS(&total_evaluated_sample_count[n],1) < end_sample_count) {
        if (total_evaluated_sample_count[n] % update_period == 0) {
            for (long t = 0; t < cluster_count; t++) {
                if (t != n) {
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
                l_temp1 = (di * l_train_v[i]) >> 24;
                l_temp2 = (eta_gamma * l_feat_deg_recip[feature]) >> 24;
                one_min_ltemp = 16777216 - l_temp2;
                do {
                    mv_original = l_model_vec[feature];
                    mv_new = ((mv_original + l_temp1) * one_min_ltemp) >> 24;
                } while (ATOMIC_CAS(&l_model_vec[feature], mv_original, mv_new) != mv_original);
            }
        }
    }
}

void cas_drop_train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count) {
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
    long l_temp1;
    long l_temp2;
    unsigned long rand_state = 1337 + (1337 * thread_id);
    unsigned long sample;
    long mv_original;
    long mv_new;
    long one_min_ltemp;

    while (ATOMIC_ADDMS(&total_evaluated_sample_count[n],1) < end_sample_count) {
        if (total_evaluated_sample_count[n] % update_period == 0) {
            for (long t = 0; t < cluster_count; t++) {
                if (t != n) {
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
                l_temp1 = (di * l_train_v[i]) >> 24;
                l_temp2 = (eta_gamma * l_feat_deg_recip[feature]) >> 24;
                one_min_ltemp = 16777216 - l_temp2;
                mv_original = l_model_vec[feature];
                mv_new = ((mv_original + l_temp1) * one_min_ltemp) >> 24;
                ATOMIC_CAS(&l_model_vec[feature], mv_original, mv_new);
            }
        } else {
            for (i = start; i < stop; i++) {
                feature = l_train_f[i];
                l_temp1 = (eta_gamma * l_feat_deg_recip[feature]) >> 24;
                one_min_ltemp = 16777216 - l_temp1;
                mv_original = l_model_vec[feature];
                mv_new = (mv_original * one_min_ltemp) >> 24;
                ATOMIC_CAS(&l_model_vec[feature], mv_original, mv_new);
            }
        }
    }
}

void cas_and_neg_grad_drop_train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count) {
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
    long l_temp1;
    long l_temp2;
    unsigned long rand_state = 1337 + (1337 * thread_id);
    unsigned long sample;
    long mv_original;
    long mv_new;
    long one_min_ltemp;

    while (ATOMIC_ADDMS(&total_evaluated_sample_count[n],1) < end_sample_count) {
        if (total_evaluated_sample_count[n] % update_period == 0) {
            for (long t = 0; t < cluster_count; t++) {
                if (t != n) {
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
                l_temp1 = (di * l_train_v[i]) >> 24;
                l_temp2 = (eta_gamma * l_feat_deg_recip[feature]) >> 24;
                one_min_ltemp = 16777216 - l_temp2;
                mv_original = l_model_vec[feature];
                mv_new = ((mv_original + l_temp1) * one_min_ltemp) >> 24;
                ATOMIC_CAS(&l_model_vec[feature], mv_original, mv_new);
            }
        }
    }
}

void nudge_train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count) {
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
    long mv_original;
    long mv_adjustment;
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
                mv_original = l_model_vec[feature];
                mv_adjustment = mv_original + l_temp;
                l_temp = (eta_gamma * l_feat_deg_recip[feature]) >> 24;
                mv_adjustment = (mv_adjustment * (16777216 - l_temp)) >> 24;
                mv_adjustment -= mv_original;
                l_model_vec[feature] += mv_adjustment;
            }
        } else {
            for (i = start; i < stop; i++) {
                feature = l_train_f[i];
                mv_original = l_model_vec[feature];
                l_temp = (eta_gamma * l_feat_deg_recip[feature]) >> 24;
                mv_adjustment = (mv_original * (16777216 - l_temp)) >> 24;
                mv_adjustment -= mv_original;
                l_model_vec[feature] += mv_adjustment;
            }
        }
    }
}

void nudge_and_neg_grad_drop_train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count) {
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
    long mv_original;
    long mv_adjustment;
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

        if (distance >= 16777216) {
            for (i = start; i < stop; i++) {
                feature = l_train_f[i];
                mv_original = l_model_vec[feature];
                l_temp = (eta_gamma * l_feat_deg_recip[feature]) >> 24;
                mv_adjustment = (mv_original * (16777216 - l_temp)) >> 24;
                mv_adjustment -= mv_original;
                l_model_vec[feature] += mv_adjustment;
            }
        }
    }
}

void reinitialize_models(long n, long i){
    for (long f = 0; f < featureSetSize; f++){
        model_vec[i][f] = model_vec[n][f];
    }
}