//
// Created by Brian Page on 2020-04-09.
//

#ifndef EMUSGD_SGD_H
#define EMUSGD_SGD_H
#include "emu.h"
#include "stdlib.h"
#include "unistd.h"
#include "stddef.h"
#include "fcntl.h"
#include "time.h"
#include "stdint.h"
#include <math.h>

/** replicated globals */
extern replicated long cluster_count;
extern replicated long eta;                        // initial step size
extern replicated long beta;
extern replicated long gamma;
extern replicated long lambda;
extern replicated long one_min_lambda;
extern replicated long epochs;            // num of epochs to run on each cluster
extern replicated long train_sample_count;      // samples in training data set (equivalent to row count in matrix)
extern replicated long regularization_scalar;
extern replicated long featureSetSize;
extern replicated long samples_per_cluster;
extern replicated long threads_per_cluster;
extern replicated long total_train_points;
extern replicated long update_period;
extern replicated long train_type;
extern replicated long ignore_poor_samples;

/** Data allocation and misc globals */
extern replicated long** model_vec;        // working vector for each node
extern replicated long** feat_deg_recip;
extern replicated long** train_s; // training data sample id's
extern replicated long** train_f;// training data feature id's (1:1 relationship to values vector)
extern replicated long** train_v;          // training data values (non-zero values for all samples)
extern replicated long** train_c; // training sample classes (single value for each sample)

extern replicated long* train_s_stripped;
extern replicated long* train_f_stripped;
extern replicated long* train_v_stripped;
extern replicated long* train_c_stripped;
extern replicated long* test_s_stripped;
extern replicated long* test_f_stripped;
extern replicated long* test_v_stripped;
extern replicated long* test_c_stripped;
extern replicated long* model_vec_stripped;
extern replicated long* feat_deg_recip_stripped;
extern replicated long* total_evaluated_sample_count;
extern replicated long* cluster_samples;
extern replicated long* l_mv_start;
extern replicated long* l_mv_stop;

void train_spawn(long n, long epoch, long eta_gamma, long beta_gamma);
void train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count);
void neg_grad_drop_train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count);
void cas_loop_train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count);
void cas_loop_and_neg_grad_drop_train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count);
void cas_drop_train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count);
void cas_and_neg_grad_drop_train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count);
void nudge_train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count);
void nudge_and_neg_grad_drop_train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count);
void stripped_train(long thread_id, long eta_gamma);
void reinitialize_models(long n, long i);
void nudge_reinitialize_models(long n, long i);
#endif //EMUSGD_SGD_H