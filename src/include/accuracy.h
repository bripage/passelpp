//
// Created by Brian Page on 2020-07-10.
//

#ifndef EMUSGD_ACCURACY_H
#define EMUSGD_ACCURACY_H
#include "emu.h"
#include "stdlib.h"
#include "unistd.h"
#include "stddef.h"
#include "fcntl.h"
#include <string.h>
#include <math.h>

FILE * test_features;
extern char* test_feature_path;
extern char* test_label_path;
extern replicated long cluster_count;
extern replicated long total_test_points;
extern replicated long train_sample_count;
extern replicated long test_sample_count;
extern replicated long samples_per_cluster;
extern long node_count_start;
extern long non_standard_classes;
extern long class1;
extern long class2;
extern replicated long featureSetSize;

extern replicated long** accuracies;
extern replicated long** train_s;
extern replicated long** train_f;
extern replicated long** train_v;
extern replicated long** train_c;
extern replicated long** model_vec;        // working vector for each node

extern replicated long* test_s_stripped;
extern replicated long* test_f_stripped;
extern replicated long* test_v_stripped;
extern replicated long* test_c_stripped;
extern replicated long* model_vec_stripped;

void populateTestData();
void populateTestDataStripped();
void get_accuracy(long n);
void get_stripped_accuracy();
void reduce_models(long n);

#endif //EMUSGD_ACCURACY_H
