//
// Created by bpage1 on 4/3/20.
//

#ifndef EMUSGD_INIT_H
#define EMUSGD_INIT_H
#include "emu.h"
#include "stdlib.h"
#include "unistd.h"
#include "stddef.h"
#include "fcntl.h"
#include <string.h>
#include <math.h>
#include <sys/stat.h>
#include "memoryweb/io.h"

/// Replicated globals
extern replicated long test_id;
extern replicated long cluster_count;
extern replicated long threads_per_cluster;
extern replicated long epochs;               // num of epochs to run on each cluster
extern replicated long gamma;                      // initial step decay
extern replicated long eta;                        // initial step size
extern replicated long beta;
replicated long lambda;
replicated long one_min_lambda;
replicated long total_train_points;         // non-zeros in training data set
replicated long train_sample_count;         // samples in training data set (equivalent to row count in matrix)
replicated long total_test_points;
replicated long test_sample_count;
replicated long featureSetSize;             // num features in training data set (equivalent to col count in matrix)
replicated long non_standard_classes;
replicated long class1;
replicated long class2;
replicated long samples_per_cluster;
replicated long update_period;
extern replicated long using_clusters;
replicated long node_count;
replicated long multi_file_load;
extern replicated long clock_rate;
replicated long non_zeros_per_node;

/// Temporary variables and execution behavior flags
double initial_step_size;                // becomes eta
double initial_step_decay;               // becomes gamma
FILE * train_data;                       // training data file ptr
char * train_data_path;                  // path to training data file
char* test_feature_path;                 // path to accuracy testing file
char* test_label_path;                   // path to accuracy testing sample class filez

/// Data allocation and misc globals
replicated long*** data_read_buffer;

replicated long** model_vec;        // working vector for each node
replicated long** working_vec;       // working vector for each node
replicated long** train_s; // training data sample id's
replicated long** train_f;// training data feature id's (1:1 relationship to values vector)
replicated long** train_v;          // training data values (non-zero values for all samples)
replicated long** train_c; // training sample classes (single value for each sample)
replicated long** feat_deg_recip;
replicated long** accuracies;
replicated long** points_to_read;

replicated long* gradients;
replicated long* test_s_stripped;
replicated long* test_f_stripped;
replicated long* test_v_stripped;
replicated long* test_c_stripped;
replicated long* model_vec_stripped;
replicated long* feat_deg_recip_stripped;
replicated long* total_evaluated_sample_count;
replicated long* cluster_samples;
replicated long* upstream;
replicated long* token;
replicated long* samples_since_token;
replicated long* run_flag;
replicated long* node_nnzs;

void parse_args(int argc, char * argv[]);
void init();
void init_cluster(long n);
void zero_out(long n);

#endif //EMUSGD_INIT_H