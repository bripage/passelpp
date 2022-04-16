//
// Created by bpage1 on 4/3/20.
//

#ifndef EMUSGD_WILDEBEEST_H
#define EMUSGD_WILDEBEEST_H
#include "emu.h"
#include "fcntl.h"
#include "time.h"
#include "stdlib.h"
#include "stdint.h"
#include <math.h>

/// Temporary variables and execution behavior flags
replicated long threads_per_cluster;
replicated long epochs;
replicated long cluster_count;
replicated long test_id;
replicated long eta;                        // initial step size
replicated long beta;
replicated long gamma;
replicated long using_clusters;
replicated long clock_rate;

/// Data allocation
extern replicated long* gradients;
extern replicated long** model_vec;

extern replicated long* accuracies;
extern replicated long* model_vec_stripped;

#endif //EMUSGD_WILDEBEEST_H