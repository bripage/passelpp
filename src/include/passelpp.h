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

/// Temporary variables and execution behavior flags
replicated long threads_per_cluster;
replicated long epochs;
replicated long cluster_count;
replicated long test_id;
replicated long eta;                        // initial step size
replicated long beta;
replicated long gamma;
replicated long using_clusters;
replicated long model_reinitialization;
replicated long reinit_type;
replicated long train_type;

/// Data allocation and misc globals
replicated long* epoch_running;
replicated long** updater_last_node;
extern replicated long** accuracies;

#endif //EMUSGD_WILDEBEEST_H