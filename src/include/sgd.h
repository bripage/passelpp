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
extern replicated long eta;                     // initial step size
extern replicated long beta;
extern replicated long gamma;
extern replicated long lambda;
extern replicated long one_min_lambda;
extern replicated long epochs;                  // num of epochs to run on each cluster
extern replicated long train_sample_count;      // samples in training data set (equivalent to row count in matrix)
extern replicated long featureSetSize;
extern replicated long samples_per_cluster;
extern replicated long threads_per_cluster;
extern replicated long total_train_points;
extern replicated long update_period;
extern replicated long train_sample_count;

/** Data allocation and misc globals */
extern replicated long** model_vec;         // model vector for each node
extern replicated long** working_vec;       // working vector for each node
extern replicated long** feat_deg_recip;    // reciprocal of occourance count (feature importance "weight" scalar)
extern replicated long** train_s;           // training data sample id's
extern replicated long** train_f;           // training data feature id's (1:1 relationship to values vector)
extern replicated long** train_v;           // training data values (non-zero values for all samples)
extern replicated long** train_c;           // training sample classes (single value for each sample)

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
extern replicated long* upstream;
extern replicated long* token;
extern replicated long* samples_since_token;

void train_spawn(long n, long epoch, long eta_gamma, long beta_gamma);
void train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count);
void stripped_train_no_epochs_spawn_children(long tid);
void child_train_pos_gradient(long i, long eta_gamma);
void child_train_neg_gradient(long i, long eta_gamma, long di);

#endif //EMUSGD_SGD_H