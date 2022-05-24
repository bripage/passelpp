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
extern replicated long node_count;
extern replicated long non_zeros_per_node;

/** Data allocation and misc globals */
extern replicated long** model_vec;         // model vector for each node
extern replicated long** working_vec;       // working vector for each node
extern replicated long** feat_deg_recip;    // reciprocal of occourance count (feature importance "weight" scalar)
extern replicated long** train_s;           // training data sample id's
extern replicated long** train_f;           // training data feature id's (1:1 relationship to values vector)
extern replicated long** train_v;           // training data values (non-zero values for all samples)
extern replicated long** train_c;           // training sample classes (single value for each sample)

extern replicated long* gradients;
extern replicated long* model_vec_stripped;
extern replicated long* feat_deg_recip_stripped;
extern replicated long* total_evaluated_sample_count;
extern replicated long* cluster_samples;
extern replicated long* upstream;
extern replicated long* token;
extern replicated long* samples_since_token;
extern replicated long* node_nnzs;
extern replicated long* up;

void train_spawn(long n, long type, long eta_gamma, long beta_gamma);
void train(long thread_id, long n, long eta_gamma, long beta_gamma);
void featured_partitioned_train(long tid, , long start_node);
void get_partial_gradient(long n, long tid, long sample);
void child_train_pos(long n, long sample, long eta_gamma);
void child_train_neg(long n, long sample, long eta_gamma, long di);

#endif //EMUSGD_SGD_H