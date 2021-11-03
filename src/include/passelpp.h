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

/// Data allocation and misc globals
replicated long* up_token;

#endif //EMUSGD_WILDEBEEST_H