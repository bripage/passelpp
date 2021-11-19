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
extern replicated long update_type;

/** Data allocation and misc globals */
extern replicated long** working_vec;        // working vector for each node
extern replicated long** model_vec;        // working vector for each node
extern replicated long** feat_deg_recip;
extern replicated long** train_s; // training data sample id's
extern replicated long** train_f;// training data feature id's (1:1 relationship to values vector)
extern replicated long** train_v;          // training data values (non-zero values for all samples)
extern replicated long** train_c; // training sample classes (single value for each sample)
extern replicated long** updater_last_node;

extern replicated long* upstream;
extern replicated long* downstream;
extern replicated long* total_evaluated_sample_count;
extern replicated long* cluster_samples;
extern replicated long* epoch_running;
extern replicated long* l_mv_start;
extern replicated long* l_mv_stop;

void train_spawn(long n, long epoch, long eta_gamma, long beta_gamma);
void train(long thread_id, long n, long eta_gamma, long beta_gamma, long end_sample_count);
#endif //EMUSGD_SGD_H