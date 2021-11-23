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
FILE * test_labels;
extern char* test_feature_path;
extern char* test_label_path;
extern replicated long total_test_points;
extern replicated long train_sample_count;
extern replicated long test_sample_count;
extern replicated long samples_per_cluster;
extern replicated double* accuracies;
extern replicated long** train_s;
extern replicated long** train_f;
extern replicated long** train_v;
extern replicated long** train_c;
extern replicated long** test_s;
extern replicated long** test_f;
extern replicated long** test_v;
extern replicated long** test_c;
extern replicated long** model_vec;        // working vector for each node
extern long node_count_start;
extern long non_standard_classes;
extern long class1;
extern long class2;

void populateTestData();
double get_trainData_accuracy(long n);
double get_testData_accuracy(long n);
double get_single_trainData_accuracy();
double get_single_testData_accuracy(long n);

#endif //EMUSGD_ACCURACY_H
