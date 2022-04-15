        .extern   @working_vec
        .extern   @model_vec
        .extern   @featureSetSize
        .extern   @lambda
        .extern   @one_min_lambda
        .extern   @threads_per_cluster
        .extern   @total_evaluated_sample_count
        .extern   @upstream
        .extern   @train_s
        .extern   @train_c
        .extern   @train_f
        .extern   @train_v
        .extern   @feat_deg_recip
        .extern   @cluster_count
        .extern   @cluster_samples
        .extern   @token
        .extern   @samples_since_token
        .extern   @update_period
        .extern   @eta
        .extern   @epochs
        .extern   @train_sample_count
        .extern   @node_count
        .extern   @gradients
        .extern   @gamma
        .global   @downstream_update
        .text
@downstream_update:
        .function_begin                          // entry                   (0)
                                                 // empty prologue          [0]
        ldg       @working_vec                   // D = @working_vec        [24]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     5                              // A = D + E5              [3]
        lde       3                              // E3 = *A                 [3]
        etd       4                              // D = E4                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     5                              // A = D + E5              [3]
        lde       5                              // E5 = *A                 [3]
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       4                              // D = E4                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       4                              // E4 = *A                 [3]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      2                              // D ?= E2                 [3]
        td1       39, %"block%14"                // D sgt E                 [5]
        jl        %"block%13"                    //                         [6]
%"block%14":                                     // block                   (133)
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     3                              // A = D + E3              [3]
        lde       6                              // E6 = *A                 [3]
        ldg       @lambda                        // D = @lambda             [24]
        dta                                      // A = D                   [2]
        lde       7                              // E7 = *A                 [3]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     4                              // A = D + E4              [3]
        etd       6                              // D = E6                  [2]
        multe     7                              // D *= E7                 [3]
        srac      24                             // D >>= 24                [4]
        radd                                     // *A += D                 [2]
        ldg       @lambda                        // D = @lambda             [24]
        dta                                      // A = D                   [2]
        lde       7                              // E7 = *A                 [3]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     5                              // A = D + E5              [3]
        etd       6                              // D = E6                  [2]
        multe     7                              // D *= E7                 [3]
        srac      24                             // D >>= 24                [4]
        radd                                     // *A += D                 [2]
        eta       2                              // A = E2                  [2]
        aaim      2                              // A += 16                 [3]
        ate       2                              // E2 = A                  [2]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      2                              // D ?= E2                 [3]
        td0       39, %"block%13"                // E sge D                 [5]
        jl        %"block%14"                    //                         [6]
%"block%13":                                     // block                   (291)
        jmpe      1                              // return void             [3]
        .function_end                            // function size           (294)
        .global   @upstream_update
        .text
@upstream_update:
        .function_begin                          // entry                   (0)
                                                 // empty prologue          [0]
        ldg       @working_vec                   // D = @working_vec        [24]
        dta                                      // A = D                   [2]
        lde       6                              // E6 = *A                 [3]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     6                              // A = D + E6              [3]
        lde       8                              // E8 = *A                 [3]
        etd       4                              // D = E4                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     6                              // A = D + E6              [3]
        lde       10                             // E10 = *A                [3]
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      2                              // D ?= E2                 [3]
        td1       39, %"block%15"                // D sgt E                 [5]
        jl        %"block%14"                    //                         [6]
%"block%15":                                     // block                   (133)
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     3                              // A = D + E3              [3]
        ate       4                              // E4 = A                  [2]
        eta       4                              // A = E4                  [2]
        lde       6                              // E6 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        eta       4                              // A = E4                  [2]
        wrd                                      // *A = D                  [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     8                              // A = D + E8              [3]
        ate       7                              // E7 = A                  [2]
        eta       7                              // A = E7                  [2]
        ld                                       // D = *A                  [1]
        sube      6                              // D -= E6                 [3]
        multe     5                              // D *= E5                 [3]
        srac      24                             // D >>= 24                [4]
        dte       9                              // E9 = D                  [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     10                             // A = D + E10             [3]
        etd       9                              // D = E9                  [2]
        radd                                     // *A += D                 [2]
        ldg       @one_min_lambda                // D = @one_min_lambda     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        multe     6                              // D *= E6                 [3]
        srac      24                             // D >>= 24                [4]
        dpeta     9                              // A = D + E9              [3]
        ate       6                              // E6 = A                  [2]
        etd       6                              // D = E6                  [2]
        eta       4                              // A = E4                  [2]
        addm                                     // *A += D                 [2]
        etd       6                              // D = E6                  [2]
        eta       7                              // A = E7                  [2]
        wrd                                      // *A = D                  [2]
        eta       2                              // A = E2                  [2]
        aaim      2                              // A += 16                 [3]
        ate       2                              // E2 = A                  [2]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      2                              // D ?= E2                 [3]
        td0       39, %"block%14"                // E sge D                 [5]
        jl        %"block%15"                    //                         [6]
%"block%14":                                     // block                   (294)
        jmpe      1                              // return void             [3]
        .function_end                            // function size           (297)
        .global   @train_spawn
        .text
@train_spawn:
        .function_begin                          // entry                   (0)
        ldr       @_frame_buckets_+16            // D = &bucket             [24]
        dta                                      // A = &bucket             [2]
        ata2                                     // A2 = &bucket            [2]
%tn%3:
        lsr       3                              // D = -1                  [3]
        swap                                     // lock bucket & put cur bucket value in D[2]
        bdgtz     %tn%4                          // won lock, jump to that  [4]
        jmp       %tn%5                          // didn't win lock, jump to that[4]
%tn%4:
        dta                                      // A = new FP              [2]
        etd       0                              // D = caller's FP         [2]
        ate       0                              // E0 = new FP             [2]
        swap                                     // Mem[A] = caller FP; D = next FP[2]
        swapa                                    // A=&bucket, A2 = new FP  [2]
        wrd                                      // *A = next FP (unlocks bucket)[2]
        swapa                                    // A = new FP, A2 = &bucket[2]
        jl        %tn%2                          // jump to done            [6]
%tn%5:
        bdz       %tn%1                          // bucket was empty, have to malloc a frame[4]
        jmp       %tn%3                          // *bucket was negative, retry frame cache[4]
%tn%1:
        wrd                                      // *bucket = 0; unlock frame cache and set to empty[2]
        etd       0                              // D = caller's FP         [2]
        dtd2                                     // D2 = caller's FP        [2]
        lsr       8                              // D = ThreadID            [3]
        muma1     2                              // D = D & 0x7 - get array index[4]
        sllc      8                              // D = D << 8 - multiply array index by 256b in malloc arena[4]
        dte       0                              // E0 = D                  [2]
        ldr       @_malloc_arenas_               // D = &_malloc_arenas_[0] [24]
        dpeta     0                              // A = &_malloc_arenas_[tid & 0x7] = reg_save_area[3]
        ata2                                     // A2 = &reg_save_area (save for restore)[2]
%tn%6:
        lit       8                              // D = 8                   [4]
        addms                                    // *A += D; D = *A         [2]
        bdz       %tn%8                          // branch if unlocked      [4]
        muma1     6                              //  D &= 0x7F              [4]
%tn%7:
        aaim      0                              // A += 0 (busy no-op)     [3]
        bnzd      %tn%7                          // branch if D != 0        [4]
        jmp       %tn%6                          // retry lock              [4]
%tn%8:
        swapd                                    //                         [2]
        dte       0                              // E0 = old FP             [2]
        aaim      1                              // A += 8                  [3]
        mts       0x1,0x1                        // set tcb.WO              [6]
        ste       1                              // *A = E1                 [3]
        aaim      1                              // A += 8                  [3]
        ste       2                              // *A = E2                 [3]
        aaim      1                              // A += 8                  [3]
        ste       3                              // *A = E3                 [3]
        aaim      1                              // A += 8                  [3]
        ste       4                              // *A = E4                 [3]
        mts       0x1,0                          // clear tcb.WO            [6]
        lit16     1024                           // D = 0x400               [6]
        dte       2                              // E2 = bucket size        [2]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // call malloc             [3]
        eta       2                              // A = new FP              [2]
        ste       0                              // store old FP            [3]
        ate       0                              // E0 = new FP             [2]
        swapa                                    // A = A2 (restore &reg_save_area)[2]
        atd                                      // D = A = &reg save area  [2]
        aaim      1                              // A += 8                  [3]
        lde       1                              // E1 = *A                 [3]
        aaim      1                              // A += 8                  [3]
        lde       2                              // E2 = *A                 [3]
        aaim      1                              // A += 8                  [3]
        lde       3                              // E3 = *A                 [3]
        aaim      1                              // A += 8                  [3]
        lde       4                              // E4 = *A                 [3]
        dta                                      // A = &reg save area      [2]
        lsr       0                              // D = 0x0                 [3]
        std                                      // unlock reg save area    [2]
%tn%2:
                                                 // end of prologue         (334)
        lit16     568                            // D = 0x238               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     560                            // D = 0x230               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       14                             // D = E14                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     552                            // D = 0x228               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       13                             // D = E13                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     544                            // D = 0x220               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ete       2, 14                          // E14 = E2                [4]
        lit16     576                            // D = 0x240               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       3                              // D = E3                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     584                            // D = 0x248               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       4                              // D = E4                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        ate       13                             // E13 = A                 [2]
        eta       13                             // A = E13                 [2]
        lsr       0                              // D = 0x0                 [3]
        stdia                                    // thread_count = 0        [2]
        std                                      // continuation_valid = 0  [2]
        ldg       @threads_per_cluster           // D = @threads_per_cluster[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%5"                     //                         [4]
        jl        %._crit_edge                   //                         [6]
%"block%5":                                      // block                   (469)
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
%"block%11":                                     // block                   (474)
        eta       2                              // A = E2                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        ete       14, 3                          // E3 = E14                [4]
        lit16     576                            // D = 0x240               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        lit16     584                            // D = 0x248               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        baz       %tn%9                          // skip migrate if !A      [4]
        ld8a                                     // migrate                 [3]
%tn%9:
        ldspawn   %tn%10, 0xf03f                 // D = spawn info          [18]
        spc       %tn%11, 1                      // attempt spawn           [4]
        jl        %tn%12                         // continue                [6]
%tn%11:
        ldc       @train.cilkhelper              // D = @train.cilkhelper   [15]
        jale      1                              // call @train.cilkhelper  [3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        addm                                     // threadCount -= 1        [2]
        jmp       %tn%12                         // continue                [4]
%tn%10:
        ldc       @train.cilkhelper              // D = @train.cilkhelper   [15]
        jale      1                              // call @train.cilkhelper  [3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        resize    0x30000                        // only keep A & D         [7]
        addm                                     // threadCount -= 1        [2]
        bz        %tn%13                         // branch if last thread   [4]
        release   0                              // quit                    [3]
%tn%13:
        aaim      1                              // A = &continuationValid  [3]
%tn%14:
        ld                                       // D = continuationValid   [1]
        bdz       %tn%14                         // not ready yet           [4]
        aaim      1                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D                  [2]
        jmp       %tn%15                         // jmp over next           [4]
%tn%16:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // D = A                   [2]
%tn%15:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%16                         // D != 0, adjust A        [4]
        lsr       0                              // D = 0x0                 [3]
        rts                                      // resume continuation     [2]
        swapd                                    // D = &continuation[0]    [2]
        dta                                      // A = &continuation[0]    [2]
        swapd                                    // D = 0                   [2]
%tn%12:
        ldg       @threads_per_cluster           // D = @threads_per_cluster[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      15                             // D ?= E15                [3]
        td0       39, %"block%6"                 // E sge D                 [5]
%._crit_edge6:                                   // block                   (726)
        ete       15, 2                          // E2 = E15                [4]
        jl        %"block%11"                    //                         [6]
%._crit_edge:                                    // block                   (736)
        lsr       0                              // D = 0x0                 [3]
        dte       15                             // E15 = D                 [2]
%"block%6":                                      // block                   (741)
        eta       13                             // A = E13                 [2]
        etd       15                             // D = E15                 [2]
        addm                                     // *threadCount += D       [2]
        bdnz      %tn%18                         // kids not done?          [4]
        jmp       %tn%17                         // kids are done           [4]
%tn%18:
        aaim      2                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D == &continuation[0][2]
        jmp       %tn%19                         // skip next inst          [4]
%tn%20:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // A = D                   [2]
%tn%19:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%20                         // Adjust A if D != 0      [4]
        lsr       1                              // D = 0x1                 [3]
        sts                                      // save threadlet state    [2]
        swapd                                    // D = &continuation[0], D2=1[2]
        dta                                      // A = D                   [2]
        swapd                                    // D = 1 (from inst before sts)[2]
        bdz       %tn%17                         // skip if kid             [4]
        aaim      -1                             // A = &continuationValid  [3]
        std                                      // continuationValid = D   [2]
        release   0                              // parent quits            [3]
%tn%17:
        fence                                    // Make sure all ACKs have returned[2]
        ldg       @total_evaluated_sample_count  // D = @total_evaluated_sample_count[24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        eta       1                              // A = E1                  [2]
        swap                                     // t=*A; *A=D; D=t         [2]
        dte       1                              // E1 = D                  [2]
        lit16     544                            // D = 0x220               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     552                            // D = 0x228               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       13                             // E13 = *A                [3] **** spill related
        lit16     560                            // D = 0x230               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       14                             // E14 = *A                [3] **** spill related
        lit16     568                            // D = 0x238               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       15                             // E15 = *A                [3] **** spill related
%tn%0:                                           // block                   (897)
        eta       0                              // A = newFP               [2]
        lde       0                              // E0 = oldFP              [3]
        ate       11                             // E11 = newFP             [2]
        ldr       @_frame_buckets_+16            // D = bucket              [24]
        dtd2                                     // D2 = FP                 [2]
        dta                                      // A = D                   [2]
%tn%21:
        ld                                       // D = *bucket             [1]
        bdgtz     %tn%22                         // bucket valid?           [4]
        bdz       %tn%22                         // bucket empty?           [4]
        jmp       %tn%21                         // bucket locked           [4]
%tn%22:
        eta       11                             // A = newFP               [2]
        std                                      // *fp = free list         [2]
        swapd                                    //                         [2]
        dta                                      // A = D                   [2]
        swapd                                    //                         [2]
        cas       11                             // bucket changed?         [3]
        bnz       %tn%21                         // if bucket changed, try again[4]
        jmpe      1                              // return                  [3]
        .function_end                            // function size           (965)
        .extern   @_Cilk_migrate_hint
        .global   @train
        .text
@train:
        .function_begin                          // entry                   (0)
        ldr       @_frame_buckets_+16            // D = &bucket             [24]
        dta                                      // A = &bucket             [2]
        ata2                                     // A2 = &bucket            [2]
%tn%3:
        lsr       3                              // D = -1                  [3]
        swap                                     // lock bucket & put cur bucket value in D[2]
        bdgtz     %tn%4                          // won lock, jump to that  [4]
        jmp       %tn%5                          // didn't win lock, jump to that[4]
%tn%4:
        dta                                      // A = new FP              [2]
        etd       0                              // D = caller's FP         [2]
        ate       0                              // E0 = new FP             [2]
        swap                                     // Mem[A] = caller FP; D = next FP[2]
        swapa                                    // A=&bucket, A2 = new FP  [2]
        wrd                                      // *A = next FP (unlocks bucket)[2]
        swapa                                    // A = new FP, A2 = &bucket[2]
        jl        %tn%2                          // jump to done            [6]
%tn%5:
        bdz       %tn%1                          // bucket was empty, have to malloc a frame[4]
        jmp       %tn%3                          // *bucket was negative, retry frame cache[4]
%tn%1:
        wrd                                      // *bucket = 0; unlock frame cache and set to empty[2]
        etd       0                              // D = caller's FP         [2]
        dtd2                                     // D2 = caller's FP        [2]
        lsr       8                              // D = ThreadID            [3]
        muma1     2                              // D = D & 0x7 - get array index[4]
        sllc      8                              // D = D << 8 - multiply array index by 256b in malloc arena[4]
        dte       0                              // E0 = D                  [2]
        ldr       @_malloc_arenas_               // D = &_malloc_arenas_[0] [24]
        dpeta     0                              // A = &_malloc_arenas_[tid & 0x7] = reg_save_area[3]
        ata2                                     // A2 = &reg_save_area (save for restore)[2]
%tn%6:
        lit       8                              // D = 8                   [4]
        addms                                    // *A += D; D = *A         [2]
        bdz       %tn%8                          // branch if unlocked      [4]
        muma1     6                              //  D &= 0x7F              [4]
%tn%7:
        aaim      0                              // A += 0 (busy no-op)     [3]
        bnzd      %tn%7                          // branch if D != 0        [4]
        jmp       %tn%6                          // retry lock              [4]
%tn%8:
        swapd                                    //                         [2]
        dte       0                              // E0 = old FP             [2]
        aaim      1                              // A += 8                  [3]
        mts       0x1,0x1                        // set tcb.WO              [6]
        ste       1                              // *A = E1                 [3]
        aaim      1                              // A += 8                  [3]
        ste       2                              // *A = E2                 [3]
        aaim      1                              // A += 8                  [3]
        ste       3                              // *A = E3                 [3]
        aaim      1                              // A += 8                  [3]
        ste       4                              // *A = E4                 [3]
        aaim      1                              // A += 8                  [3]
        ste       5                              // *A = E5                 [3]
        mts       0x1,0                          // clear tcb.WO            [6]
        lit16     1024                           // D = 0x400               [6]
        dte       2                              // E2 = bucket size        [2]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // call malloc             [3]
        eta       2                              // A = new FP              [2]
        ste       0                              // store old FP            [3]
        ate       0                              // E0 = new FP             [2]
        swapa                                    // A = A2 (restore &reg_save_area)[2]
        atd                                      // D = A = &reg save area  [2]
        aaim      1                              // A += 8                  [3]
        lde       1                              // E1 = *A                 [3]
        aaim      1                              // A += 8                  [3]
        lde       2                              // E2 = *A                 [3]
        aaim      1                              // A += 8                  [3]
        lde       3                              // E3 = *A                 [3]
        aaim      1                              // A += 8                  [3]
        lde       4                              // E4 = *A                 [3]
        aaim      1                              // A += 8                  [3]
        lde       5                              // E5 = *A                 [3]
        dta                                      // A = &reg save area      [2]
        lsr       0                              // D = 0x0                 [3]
        std                                      // unlock reg save area    [2]
%tn%2:
                                                 // end of prologue         (334)
        lit16     584                            // D = 0x248               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     576                            // D = 0x240               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       14                             // D = E14                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     568                            // D = 0x238               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       13                             // D = E13                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     560                            // D = 0x230               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ete       3, 14                          // E14 = E3                [4]
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       4                              // D = E4                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     600                            // D = 0x258               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       5                              // D = E5                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        ate       13                             // E13 = A                 [2]
        eta       13                             // A = E13                 [2]
        lsr       0                              // D = 0x0                 [3]
        stdia                                    // thread_count = 0        [2]
        std                                      // continuation_valid = 0  [2]
        lit16     608                            // D = 0x260               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       0                              // D = E0                  [2]
        addl      544                            // D += 544                [6]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     616                            // D = 0x268               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       0                              // D = E0                  [2]
        addl      552                            // D += 552                [6]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @working_vec                   // D = @working_vec        [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        lde       3                              // E3 = *A                 [3]
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       3                              // D = E3                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     608                            // D = 0x260               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       3                              // E3 = *A                 [3] **** spill related
        ldg       @upstream                      // D = @upstream           [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        ld                                       // D = *A                  [1]
        eta       3                              // A = E3                  [2] **** spill related
        wrd                                      // *A = D                  [2]
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       4                              // E4 = *A                 [3]
        lit16     616                            // D = 0x268               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%9                          // A = *A                  [4] **** spill related
%tn%9:
        etd       4                              // D = E4                  [2]
        wrd                                      // *A = D                  [2]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @train_c                       // D = @train_c            [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     640                            // D = 0x280               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       15                             // E15 = *A                [3]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     648                            // D = 0x288               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     656                            // D = 0x290               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lit16     1337                           // D = 0x539               [6]
        multe     2                              // D *= E2                 [3]
        addl      1337                           // D += 1337               [6]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        xor                                      // D ^= *A                 [2]
        bdz       %tn%10                         //                         [4]
        lsr       0                              // D = 0                   [3]
        jmp       %tn%11                         //                         [4]
%tn%10:
        lsr       1                              // D = 1                   [3]
%tn%11:
        dte       1                              // E1 = D                  [2]
        ldg       @total_evaluated_sample_count  // D = @total_evaluated_sample_count[24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       2                              // E2 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        eta       2                              // A = E2                  [2]
        addm                                     // s=*A+D; *A=s; D=s       [2]
        dte       2                              // E2 = D                  [2]
        ldg       @cluster_samples               // D = @cluster_samples    [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        etd       3                              // D = E3                  [2]
        cmpe      2                              // D ?= E2                 [3]
        srlc      39                             // shift bit 39(sgt) to 0  [4]
        muma1     0                              // D &= 1                  [4]
        dte       2                              // E2 = D                  [2]
        etd       1                              // D = E1                  [2]
        td0       0, %"block%135"                // if LSB is clear         [5]
        jl        %"block%47"                    //                         [6]
%"block%135":                                    // block                   (1073)
        etd       2                              // D = E2                  [2]
        td1       0, %"block%137"                // if LSB is set           [5]
        jl        %"block%265"                   //                         [6]
%"block%137":                                    // block                   (1086)
        ldg       @token                         // D = @token              [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        xor                                      // D ^= *A                 [2]
        bdz       %"block%143"                   //                         [4]
        jl        %"block%178"                   //                         [6]
%"block%143":                                    // block                   (1137)
        ldg       @samples_since_token           // D = @samples_since_token[24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        eta       1                              // A = E1                  [2]
        addm                                     // s=*A+D; *A=s; D=s       [2]
        dte       1                              // E1 = D                  [2]
        ldg       @update_period                 // D = @update_period      [24]
        dta                                      // A = D                   [2]
        etd       1                              // D = E1                  [2]
        xor                                      // D ^= *A                 [2]
        bdz       %"block%149"                   //                         [4]
        jl        %"block%178"                   //                         [6]
%"block%149":                                    // block                   (1222)
        ldg       @token                         // D = @token              [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        eta       1                              // A = E1                  [2]
        swap                                     // t=*A; *A=D; D=t         [2]
        dte       1                              // E1 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        dte       4                              // E4 = D                  [2]
%"block%153":                                    // block                   (1272)
        lit16     672                            // D = 0x2A0               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      4                              // D += E4                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        ete       14, 2                          // E2 = E14                [4]
        ldg       @upstream                      // D = @upstream           [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        lit16     600                            // D = 0x258               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        lit16     616                            // D = 0x268               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%12                         // A = *A                  [4] **** spill related
%tn%12:
        baz       %tn%13                         // skip migrate if !A      [4]
        ld8a                                     // migrate                 [3]
%tn%13:
        ldspawn   %tn%14, 0xf03f                 // D = spawn info          [18]
        spc       %tn%15, 1                      // attempt spawn           [4]
        jl        %tn%16                         // continue                [6]
%tn%15:
        ldc       @train.outline_.otd1.3         // D = @train.outline_.otd1.3[15]
        jale      1                              // call @train.outline_.otd1.3[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        addm                                     // threadCount -= 1        [2]
        jmp       %tn%16                         // continue                [4]
%tn%14:
        ldc       @train.outline_.otd1.3         // D = @train.outline_.otd1.3[15]
        jale      1                              // call @train.outline_.otd1.3[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        resize    0x30000                        // only keep A & D         [7]
        addm                                     // threadCount -= 1        [2]
        bz        %tn%17                         // branch if last thread   [4]
        release   0                              // quit                    [3]
%tn%17:
        aaim      1                              // A = &continuationValid  [3]
%tn%18:
        ld                                       // D = continuationValid   [1]
        bdz       %tn%18                         // not ready yet           [4]
        aaim      1                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D                  [2]
        jmp       %tn%19                         // jmp over next           [4]
%tn%20:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // D = A                   [2]
%tn%19:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%20                         // D != 0, adjust A        [4]
        lsr       0                              // D = 0x0                 [3]
        rts                                      // resume continuation     [2]
        swapd                                    // D = &continuation[0]    [2]
        dta                                      // A = &continuation[0]    [2]
        swapd                                    // D = 0                   [2]
%tn%16:
        lit16     672                            // D = 0x2A0               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lit       16                             // D = 0x10                [4]
        xor                                      // D ^= *A                 [2]
        bdz       %"block%160"                   //                         [4]
%._crit_edge168:                                 // block                   (1522)
        lit16     672                            // D = 0x2A0               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        jl        %"block%153"                   //                         [6]
%"block%160":                                    // block                   (1540)
        lit16     680                            // D = 0x2A8               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
%"block%161":                                    // block                   (1554)
        ldg       @upstream                      // D = @upstream           [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ete       14, 3                          // E3 = E14                [4]
        lit16     680                            // D = 0x2A8               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        lit16     608                            // D = 0x260               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%21                         // A = *A                  [4] **** spill related
%tn%21:
        baz       %tn%22                         // skip migrate if !A      [4]
        ld8a                                     // migrate                 [3]
%tn%22:
        ldspawn   %tn%23, 0xf01f                 // D = spawn info          [18]
        spc       %tn%24, 1                      // attempt spawn           [4]
        jl        %tn%25                         // continue                [6]
%tn%24:
        ldc       @train.outline_.otd1           // D = @train.outline_.otd1[15]
        jale      1                              // call @train.outline_.otd1[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        addm                                     // threadCount -= 1        [2]
        jmp       %tn%25                         // continue                [4]
%tn%23:
        ldc       @train.outline_.otd1           // D = @train.outline_.otd1[15]
        jale      1                              // call @train.outline_.otd1[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        resize    0x30000                        // only keep A & D         [7]
        addm                                     // threadCount -= 1        [2]
        bz        %tn%26                         // branch if last thread   [4]
        release   0                              // quit                    [3]
%tn%26:
        aaim      1                              // A = &continuationValid  [3]
%tn%27:
        ld                                       // D = continuationValid   [1]
        bdz       %tn%27                         // not ready yet           [4]
        aaim      1                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D                  [2]
        jmp       %tn%28                         // jmp over next           [4]
%tn%29:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // D = A                   [2]
%tn%28:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%29                         // D != 0, adjust A        [4]
        lsr       0                              // D = 0x0                 [3]
        rts                                      // resume continuation     [2]
        swapd                                    // D = &continuation[0]    [2]
        dta                                      // A = &continuation[0]    [2]
        swapd                                    // D = 0                   [2]
%tn%25:
        lit16     680                            // D = 0x2A8               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     680                            // D = 0x2A8               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     680                            // D = 0x2A8               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lit       16                             // D = 0x10                [4]
        xor                                      // D ^= *A                 [2]
        bdz       %"block%168"                   //                         [4]
        jl        %"block%161"                   //                         [6]
%"block%168":                                    // block                   (1822)
        eta       13                             // A = E13                 [2]
        lit       32                             // D = 0x20                [4]
        addm                                     // *threadCount += D       [2]
        bdnz      %tn%31                         // kids not done?          [4]
        jmp       %tn%30                         // kids are done           [4]
%tn%31:
        aaim      2                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D == &continuation[0][2]
        jmp       %tn%32                         // skip next inst          [4]
%tn%33:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // A = D                   [2]
%tn%32:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%33                         // Adjust A if D != 0      [4]
        lsr       1                              // D = 0x1                 [3]
        sts                                      // save threadlet state    [2]
        swapd                                    // D = &continuation[0], D2=1[2]
        dta                                      // A = D                   [2]
        swapd                                    // D = 1 (from inst before sts)[2]
        bdz       %tn%30                         // skip if kid             [4]
        aaim      -1                             // A = &continuationValid  [3]
        std                                      // continuationValid = D   [2]
        release   0                              // parent quits            [3]
%tn%30:
        fence                                    // Make sure all ACKs have returned[2]
        ldg       @token                         // D = @token              [24]
        dte       1                              // E1 = D                  [2]
        ldg       @upstream                      // D = @upstream           [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        eta       1                              // A = E1                  [2]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        eta       1                              // A = E1                  [2]
        swap                                     // t=*A; *A=D; D=t         [2]
        dte       1                              // E1 = D                  [2]
        ldg       @samples_since_token           // D = @samples_since_token[24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        eta       1                              // A = E1                  [2]
        swap                                     // t=*A; *A=D; D=t         [2]
        dte       1                              // E1 = D                  [2]
%"block%178":                                    // block                   (2014)
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        srlc      12                             // D >>= 12                [4]
        xore      1                              // D ^= E1                 [3]
        dte       1                              // E1 = D                  [2]
        etd       1                              // D = E1                  [2]
        sllc      25                             // D <<= 25                [4]
        xore      1                              // D ^= E1                 [3]
        dte       1                              // E1 = D                  [2]
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        srlc      27                             // D >>= 27                [4]
        xore      1                              // D ^= E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        ldg       @cluster_samples               // D = @cluster_samples    [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        lit16     9541                           // D = 0x2545              [6]
        sill      62609                          // D = 0x2545F491          [6]
        sill      20332                          // D = 0x2545F4914F6C      [6]
        sill      56605                          // D = 0x2545F4914F6CDD1D  [6]
        multe     1                              // D *= E1                 [3]
        udive     2                              // D2 %= E2                [3]
        swapd                                    // D = D2                  [2]
        dte       1                              // E1 = D                  [2]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       6                              // E6 = *A                 [3]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        addl      8                              // D += 8                  [6]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        lit16     640                            // D = 0x280               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        etd       5                              // D = E5                  [2]
        cmpe      6                              // D ?= E6                 [3]
        srlc      39                             // shift bit 39(sgt) to 0  [4]
        muma1     0                              // D &= 1                  [4]
        dte       2                              // E2 = D                  [2]
        etd       2                              // D = E2                  [2]
        td1       0, %"block%198"                // if LSB is set           [5]
%._crit_edge170:                                 // block                   (2255)
        lsr       0                              // D = 0x0                 [3]
        dte       4                              // E4 = D                  [2]
        jmp       %"block%213"                   //                         [4]
%"block%198":                                    // block                   (2264)
        ete       6, 3                           // E3 = E6                 [4]
        lsr       0                              // D = 0x0                 [3]
        dte       4                              // E4 = D                  [2]
%"block%199":                                    // block                   (2273)
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       7                              // E7 = *A                 [3] **** spill related
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     15                             // A = D + E15             [3]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     7                              // A = D + E7              [3]
        lde       7                              // E7 = *A                 [3]
        lit16     648                            // D = 0x288               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        multe     7                              // D *= E7                 [3]
        srac      24                             // D >>= 24                [4]
        dpeta     4                              // A = D + E4              [3]
        ate       4                              // E4 = A                  [2]
        eta       3                              // A = E3                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       3                              // E3 = A                  [2]
        etd       5                              // D = E5                  [2]
        xore      3                              // D ^= E3                 [3]
        bdz       %"block%213"                   //                         [4]
        jmp       %"block%199"                   //                         [4]
%"block%213":                                    // block                   (2357)
        etd       1                              // D = E1                  [2]
        multe     4                              // D *= E4                 [3]
        dte       3                              // E3 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        cmpe      3                              // D ?= E3                 [3]
        td1       39, %"block%217"               // E slt D                 [5]
        jl        %"block%240"                   //                         [6]
%"block%217":                                    // block                   (2385)
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        multe     1                              // D *= E1                 [3]
        dte       1                              // E1 = D                  [2]
        etd       2                              // D = E2                  [2]
        td1       0, %"block%220"                // if LSB is set           [5]
        jl        %"block%257"                   //                         [6]
%"block%220":                                    // block                   (2413)
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     15                             // A = D + E15             [3]
        lde       2                              // E2 = *A                 [3]
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dte       3                              // E3 = D                  [2]
        lit16     656                            // D = 0x290               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        multe     2                              // D *= E2                 [3]
        srac      24                             // D >>= 24                [4]
        dte       2                              // E2 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        sube      2                              // D -= E2                 [3]
        dte       2                              // E2 = D                  [2]
        lit16     648                            // D = 0x288               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        multe     1                              // D *= E1                 [3]
        srac      24                             // D >>= 24                [4]
        eta       3                              // A = E3                  [2]
        add                                      // D += *A                 [2]
        multe     2                              // D *= E2                 [3]
        srac      24                             // D >>= 24                [4]
        eta       3                              // A = E3                  [2]
        wrd                                      // *A = D                  [2]
        eta       6                              // A = E6                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       6                              // E6 = A                  [2]
        etd       5                              // D = E5                  [2]
        xore      6                              // D ^= E6                 [3]
        bdz       %tn%34                         //                         [4]
        jl        %"block%220"                   //                         [6]
%tn%34:
        jl        %"block%257"                   //                         [6]
%"block%240":                                    // block                   (2567)
        etd       2                              // D = E2                  [2]
        td1       0, %"block%242"                // if LSB is set           [5]
        jmp       %"block%257"                   //                         [4]
%"block%242":                                    // block                   (2578)
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     15                             // A = D + E15             [3]
        lde       1                              // E1 = *A                 [3]
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dte       2                              // E2 = D                  [2]
        lit16     656                            // D = 0x290               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        multe     1                              // D *= E1                 [3]
        srac      24                             // D >>= 24                [4]
        dte       1                              // E1 = D                  [2]
        eta       2                              // A = E2                  [2]
        lde       3                              // E3 = *A                 [3]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        sube      1                              // D -= E1                 [3]
        multe     3                              // D *= E3                 [3]
        srac      24                             // D >>= 24                [4]
        eta       2                              // A = E2                  [2]
        wrd                                      // *A = D                  [2]
        eta       6                              // A = E6                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       6                              // E6 = A                  [2]
        etd       5                              // D = E5                  [2]
        xore      6                              // D ^= E6                 [3]
        bdz       %"block%257"                   //                         [4]
        jmp       %"block%242"                   //                         [4]
%"block%257":                                    // block                   (2696)
        ldg       @total_evaluated_sample_count  // D = @total_evaluated_sample_count[24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        eta       1                              // A = E1                  [2]
        addm                                     // s=*A+D; *A=s; D=s       [2]
        dte       1                              // E1 = D                  [2]
        ldg       @cluster_samples               // D = @cluster_samples    [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      1                              // D ?= E1                 [3]
        td1       39, %tn%35                     // E slt D                 [5]
        jl        %"block%265"                   //                         [6]
%tn%35:
        jl        %"block%137"                   //                         [6]
%"block%47":                                     // block                   (2798)
        etd       2                              // D = E2                  [2]
        td1       0, %"block%49"                 // if LSB is set           [5]
        jl        %"block%265"                   //                         [6]
%"block%49":                                     // block                   (2811)
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        srlc      12                             // D >>= 12                [4]
        xore      1                              // D ^= E1                 [3]
        dte       1                              // E1 = D                  [2]
        etd       1                              // D = E1                  [2]
        sllc      25                             // D <<= 25                [4]
        xore      1                              // D ^= E1                 [3]
        dte       1                              // E1 = D                  [2]
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        srlc      27                             // D >>= 27                [4]
        xore      1                              // D ^= E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     9541                           // D = 0x2545              [6]
        sill      62609                          // D = 0x2545F491          [6]
        sill      20332                          // D = 0x2545F4914F6C      [6]
        sill      56605                          // D = 0x2545F4914F6CDD1D  [6]
        multe     1                              // D *= E1                 [3]
        udive     3                              // D2 %= E3                [3]
        swapd                                    // D = D2                  [2]
        dte       1                              // E1 = D                  [2]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       7                              // E7 = *A                 [3]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        addl      8                              // D += 8                  [6]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       6                              // E6 = *A                 [3]
        lit16     640                            // D = 0x280               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        etd       6                              // D = E6                  [2]
        cmpe      7                              // D ?= E7                 [3]
        srlc      39                             // shift bit 39(sgt) to 0  [4]
        muma1     0                              // D &= 1                  [4]
        dte       2                              // E2 = D                  [2]
        etd       2                              // D = E2                  [2]
        td1       0, %"block%68"                 // if LSB is set           [5]
        jmp       %._crit_edge158                //                         [4]
%"block%68":                                     // block                   (3017)
        ete       7, 3                           // E3 = E7                 [4]
        lsr       0                              // D = 0x0                 [3]
        dte       5                              // E5 = D                  [2]
%"block%69":                                     // block                   (3026)
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     15                             // A = D + E15             [3]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     4                              // A = D + E4              [3]
        lde       8                              // E8 = *A                 [3]
        lit16     648                            // D = 0x288               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        multe     8                              // D *= E8                 [3]
        srac      24                             // D >>= 24                [4]
        dpeta     5                              // A = D + E5              [3]
        ate       5                              // E5 = A                  [2]
        eta       3                              // A = E3                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       3                              // E3 = A                  [2]
        etd       6                              // D = E6                  [2]
        xore      3                              // D ^= E3                 [3]
        bdz       %"block%83"                    //                         [4]
        jmp       %"block%69"                    //                         [4]
%._crit_edge158:                                 // block                   (3098)
        lsr       0                              // D = 0x0                 [3]
        dte       5                              // E5 = D                  [2]
%"block%83":                                     // block                   (3103)
        etd       1                              // D = E1                  [2]
        multe     5                              // D *= E5                 [3]
        dte       3                              // E3 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        cmpe      3                              // D ?= E3                 [3]
        td1       39, %"block%87"                // E slt D                 [5]
        jl        %"block%110"                   //                         [6]
%"block%87":                                     // block                   (3131)
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        multe     1                              // D *= E1                 [3]
        dte       1                              // E1 = D                  [2]
        etd       2                              // D = E2                  [2]
        td1       0, %"block%90"                 // if LSB is set           [5]
        jl        %"block%127"                   //                         [6]
%"block%90":                                     // block                   (3159)
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     15                             // A = D + E15             [3]
        lde       2                              // E2 = *A                 [3]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     4                              // A = D + E4              [3]
        ate       3                              // E3 = A                  [2]
        lit16     656                            // D = 0x290               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        multe     2                              // D *= E2                 [3]
        srac      24                             // D >>= 24                [4]
        dte       2                              // E2 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        sube      2                              // D -= E2                 [3]
        dte       2                              // E2 = D                  [2]
        lit16     648                            // D = 0x288               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        multe     1                              // D *= E1                 [3]
        srac      24                             // D >>= 24                [4]
        eta       3                              // A = E3                  [2]
        add                                      // D += *A                 [2]
        multe     2                              // D *= E2                 [3]
        srac      24                             // D >>= 24                [4]
        eta       3                              // A = E3                  [2]
        wrd                                      // *A = D                  [2]
        eta       7                              // A = E7                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       7                              // E7 = A                  [2]
        etd       6                              // D = E6                  [2]
        xore      7                              // D ^= E7                 [3]
        bdz       %tn%36                         //                         [4]
        jl        %"block%90"                    //                         [6]
%tn%36:
        jmp       %"block%127"                   //                         [4]
%"block%110":                                    // block                   (3303)
        etd       2                              // D = E2                  [2]
        td1       0, %"block%112"                // if LSB is set           [5]
        jmp       %"block%127"                   //                         [4]
%"block%112":                                    // block                   (3314)
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     15                             // A = D + E15             [3]
        lde       1                              // E1 = *A                 [3]
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     4                              // A = D + E4              [3]
        ate       2                              // E2 = A                  [2]
        lit16     656                            // D = 0x290               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        multe     1                              // D *= E1                 [3]
        srac      24                             // D >>= 24                [4]
        dte       1                              // E1 = D                  [2]
        eta       2                              // A = E2                  [2]
        lde       3                              // E3 = *A                 [3]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        sube      1                              // D -= E1                 [3]
        multe     3                              // D *= E3                 [3]
        srac      24                             // D >>= 24                [4]
        eta       2                              // A = E2                  [2]
        wrd                                      // *A = D                  [2]
        eta       7                              // A = E7                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       7                              // E7 = A                  [2]
        etd       6                              // D = E6                  [2]
        xore      7                              // D ^= E7                 [3]
        bdz       %"block%127"                   //                         [4]
        jmp       %"block%112"                   //                         [4]
%"block%127":                                    // block                   (3424)
        ldg       @total_evaluated_sample_count  // D = @total_evaluated_sample_count[24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        eta       1                              // A = E1                  [2]
        addm                                     // s=*A+D; *A=s; D=s       [2]
        dte       1                              // E1 = D                  [2]
        ldg       @cluster_samples               // D = @cluster_samples    [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        etd       3                              // D = E3                  [2]
        cmpe      1                              // D ?= E1                 [3]
        td0       39, %"block%265"               // E sge D                 [5]
        jl        %"block%49"                    //                         [6]
%"block%265":                                    // block                   (3524)
        lit16     560                            // D = 0x230               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     568                            // D = 0x238               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       13                             // E13 = *A                [3] **** spill related
        lit16     576                            // D = 0x240               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       14                             // E14 = *A                [3] **** spill related
        lit16     584                            // D = 0x248               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       15                             // E15 = *A                [3] **** spill related
%tn%0:                                           // block                   (3572)
        eta       0                              // A = newFP               [2]
        lde       0                              // E0 = oldFP              [3]
        ate       11                             // E11 = newFP             [2]
        ldr       @_frame_buckets_+16            // D = bucket              [24]
        dtd2                                     // D2 = FP                 [2]
        dta                                      // A = D                   [2]
%tn%37:
        ld                                       // D = *bucket             [1]
        bdgtz     %tn%38                         // bucket valid?           [4]
        bdz       %tn%38                         // bucket empty?           [4]
        jmp       %tn%37                         // bucket locked           [4]
%tn%38:
        eta       11                             // A = newFP               [2]
        std                                      // *fp = free list         [2]
        swapd                                    //                         [2]
        dta                                      // A = D                   [2]
        swapd                                    //                         [2]
        cas       11                             // bucket changed?         [3]
        bnz       %tn%37                         // if bucket changed, try again[4]
        jmpe      1                              // return                  [3]
        .function_end                            // function size           (3640)
        .global   @featured_partitioned_train
        .text
@featured_partitioned_train:
        .function_begin                          // entry                   (0)
        ldr       @_frame_buckets_+16            // D = &bucket             [24]
        dta                                      // A = &bucket             [2]
        ata2                                     // A2 = &bucket            [2]
%tn%3:
        lsr       3                              // D = -1                  [3]
        swap                                     // lock bucket & put cur bucket value in D[2]
        bdgtz     %tn%4                          // won lock, jump to that  [4]
        jmp       %tn%5                          // didn't win lock, jump to that[4]
%tn%4:
        dta                                      // A = new FP              [2]
        etd       0                              // D = caller's FP         [2]
        ate       0                              // E0 = new FP             [2]
        swap                                     // Mem[A] = caller FP; D = next FP[2]
        swapa                                    // A=&bucket, A2 = new FP  [2]
        wrd                                      // *A = next FP (unlocks bucket)[2]
        swapa                                    // A = new FP, A2 = &bucket[2]
        jl        %tn%2                          // jump to done            [6]
%tn%5:
        bdz       %tn%1                          // bucket was empty, have to malloc a frame[4]
        jmp       %tn%3                          // *bucket was negative, retry frame cache[4]
%tn%1:
        wrd                                      // *bucket = 0; unlock frame cache and set to empty[2]
        etd       0                              // D = caller's FP         [2]
        dtd2                                     // D2 = caller's FP        [2]
        lsr       8                              // D = ThreadID            [3]
        muma1     2                              // D = D & 0x7 - get array index[4]
        sllc      8                              // D = D << 8 - multiply array index by 256b in malloc arena[4]
        dte       0                              // E0 = D                  [2]
        ldr       @_malloc_arenas_               // D = &_malloc_arenas_[0] [24]
        dpeta     0                              // A = &_malloc_arenas_[tid & 0x7] = reg_save_area[3]
        ata2                                     // A2 = &reg_save_area (save for restore)[2]
%tn%6:
        lit       8                              // D = 8                   [4]
        addms                                    // *A += D; D = *A         [2]
        bdz       %tn%8                          // branch if unlocked      [4]
        muma1     6                              //  D &= 0x7F              [4]
%tn%7:
        aaim      0                              // A += 0 (busy no-op)     [3]
        bnzd      %tn%7                          // branch if D != 0        [4]
        jmp       %tn%6                          // retry lock              [4]
%tn%8:
        swapd                                    //                         [2]
        dte       0                              // E0 = old FP             [2]
        aaim      1                              // A += 8                  [3]
        mts       0x1,0x1                        // set tcb.WO              [6]
        ste       1                              // *A = E1                 [3]
        aaim      1                              // A += 8                  [3]
        ste       2                              // *A = E2                 [3]
        mts       0x1,0                          // clear tcb.WO            [6]
        lit16     1024                           // D = 0x400               [6]
        dte       2                              // E2 = bucket size        [2]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // call malloc             [3]
        eta       2                              // A = new FP              [2]
        ste       0                              // store old FP            [3]
        ate       0                              // E0 = new FP             [2]
        swapa                                    // A = A2 (restore &reg_save_area)[2]
        atd                                      // D = A = &reg save area  [2]
        aaim      1                              // A += 8                  [3]
        lde       1                              // E1 = *A                 [3]
        aaim      1                              // A += 8                  [3]
        lde       2                              // E2 = *A                 [3]
        dta                                      // A = &reg save area      [2]
        lsr       0                              // D = 0x0                 [3]
        std                                      // unlock reg save area    [2]
%tn%2:
                                                 // end of prologue         (334)
        lit16     568                            // D = 0x238               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     560                            // D = 0x230               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       14                             // D = E14                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     552                            // D = 0x228               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       13                             // D = E13                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     544                            // D = 0x220               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     576                            // D = 0x240               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        ate       13                             // E13 = A                 [2]
        eta       13                             // A = E13                 [2]
        lsr       0                              // D = 0x0                 [3]
        stdia                                    // thread_count = 0        [2]
        std                                      // continuation_valid = 0  [2]
        ldg       @train_c                       // D = @train_c            [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lsr       9                              // D = node_id()           [3]
        dte       2                              // E2 = D                  [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        lde       1                              // E1 = *A                 [3]
        lit16     584                            // D = 0x248               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @epochs                        // D = @epochs             [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        etd       1                              // D = E1                  [2]
        bdgtz     %"block%7"                     //                         [4]
        jl        %"block%12"                    //                         [6]
%"block%7":                                      // block                   (515)
        ldg       @train_sample_count            // D = @train_sample_count [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     576                            // D = 0x240               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       3                              // E3 = *A                 [3] **** spill related
        lit16     600                            // D = 0x258               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lit16     1337                           // D = 0x539               [6]
        multe     3                              // D *= E3                 [3]
        addl      1337                           // D += 1337               [6]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @eta                           // D = @eta                [24]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        lit16     608                            // D = 0x260               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       3                              // D = E3                  [2]
        wrd                                      // *A = D                  [2] **** spill related
%"block%13":                                     // block                   (638)
        lit16     576                            // D = 0x240               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      2                              // D ?= E2                 [3]
        td1       38, %"block%20"                // E sgt D                 [5]
        jl        %"block%88"                    //                         [6]
%"block%20":                                     // block                   (662)
        lit16     576                            // D = 0x240               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     616                            // D = 0x268               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
%"block%21":                                     // block                   (687)
        lit16     600                            // D = 0x258               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     600                            // D = 0x258               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        srlc      12                             // D >>= 12                [4]
        xore      1                              // D ^= E1                 [3]
        dte       1                              // E1 = D                  [2]
        etd       1                              // D = E1                  [2]
        sllc      25                             // D <<= 25                [4]
        xore      1                              // D ^= E1                 [3]
        dte       1                              // E1 = D                  [2]
        lit16     600                            // D = 0x258               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        srlc      27                             // D >>= 27                [4]
        xore      1                              // D ^= E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     600                            // D = 0x258               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     9541                           // D = 0x2545              [6]
        sill      62609                          // D = 0x2545F491          [6]
        sill      20332                          // D = 0x2545F4914F6C      [6]
        sill      56605                          // D = 0x2545F4914F6CDD1D  [6]
        multe     1                              // D *= E1                 [3]
        udive     2                              // D2 %= E2                [3]
        swapd                                    // D = D2                  [2]
        dte       15                             // E15 = D                 [2]
        lit16     584                            // D = 0x248               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%37"                    //                         [4]
%._crit_edge27:                                  // block                   (861)
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
        jl        %"block%39"                    //                         [6]
%"block%37":                                     // block                   (872)
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      15                             // D += E15                [3]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
%"block%46":                                     // block                   (894)
        eta       2                              // A = E2                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       14                             // E14 = A                 [2]
        ete       15, 3                          // E3 = E15                [4]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        lit16     576                            // D = 0x240               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        baz       %tn%9                          // skip migrate if !A      [4]
        ld8a                                     // migrate                 [3]
%tn%9:
        ldspawn   %tn%10, 0xf03f                 // D = spawn info          [18]
        spc       %tn%11, 1                      // attempt spawn           [4]
        jl        %tn%12                         // continue                [6]
%tn%11:
        ldc       @featured_partitioned_train.outline_.otd1.2// D = @featured_partitioned_train.outline_.otd1.2[15]
        jale      1                              // call @featured_partitioned_train.outline_.otd1.2[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        addm                                     // threadCount -= 1        [2]
        jmp       %tn%12                         // continue                [4]
%tn%10:
        ldc       @featured_partitioned_train.outline_.otd1.2// D = @featured_partitioned_train.outline_.otd1.2[15]
        jale      1                              // call @featured_partitioned_train.outline_.otd1.2[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        resize    0x30000                        // only keep A & D         [7]
        addm                                     // threadCount -= 1        [2]
        bz        %tn%13                         // branch if last thread   [4]
        release   0                              // quit                    [3]
%tn%13:
        aaim      1                              // A = &continuationValid  [3]
%tn%14:
        ld                                       // D = continuationValid   [1]
        bdz       %tn%14                         // not ready yet           [4]
        aaim      1                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D                  [2]
        jmp       %tn%15                         // jmp over next           [4]
%tn%16:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // D = A                   [2]
%tn%15:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%16                         // D != 0, adjust A        [4]
        lsr       0                              // D = 0x0                 [3]
        rts                                      // resume continuation     [2]
        swapd                                    // D = &continuation[0]    [2]
        dta                                      // A = &continuation[0]    [2]
        swapd                                    // D = 0                   [2]
%tn%12:
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      14                             // D ?= E14                [3]
        td0       39, %"block%39"                // E sge D                 [5]
%._crit_edge28:                                  // block                   (1146)
        ete       14, 2                          // E2 = E14                [4]
        jl        %"block%46"                    //                         [6]
%"block%39":                                     // block                   (1156)
        eta       13                             // A = E13                 [2]
        etd       14                             // D = E14                 [2]
        addm                                     // *threadCount += D       [2]
        bdnz      %tn%18                         // kids not done?          [4]
        jmp       %tn%17                         // kids are done           [4]
%tn%18:
        aaim      2                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D == &continuation[0][2]
        jmp       %tn%19                         // skip next inst          [4]
%tn%20:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // A = D                   [2]
%tn%19:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%20                         // Adjust A if D != 0      [4]
        lsr       1                              // D = 0x1                 [3]
        sts                                      // save threadlet state    [2]
        swapd                                    // D = &continuation[0], D2=1[2]
        dta                                      // A = D                   [2]
        swapd                                    // D = 1 (from inst before sts)[2]
        bdz       %tn%17                         // skip if kid             [4]
        aaim      -1                             // A = &continuationValid  [3]
        std                                      // continuationValid = D   [2]
        release   0                              // parent quits            [3]
%tn%17:
        fence                                    // Make sure all ACKs have returned[2]
        ldg       @gradients                     // D = @gradients          [24]
        dte       1                              // E1 = D                  [2]
        lit16     576                            // D = 0x240               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        sllc      3                              // D <<= 3                 [4]
        eta       1                              // A = E1                  [2]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        eta       1                              // A = E1                  [2]
        lde       2                              // E2 = *A                 [3]
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        multe     2                              // D *= E2                 [3]
        dte       2                              // E2 = D                  [2]
        etd       2                              // D = E2                  [2]
        eta       1                              // A = E1                  [2]
        wrd                                      // *A = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        cmpe      2                              // D ?= E2                 [3]
        td1       39, %"block%53"                // E slt D                 [5]
        jl        %"block%66"                    //                         [6]
%"block%53":                                     // block                   (1312)
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     608                            // D = 0x260               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lit16     640                            // D = 0x280               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2] **** spill related
        multe     1                              // D *= E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%57"                    //                         [4]
%._crit_edge29:                                  // block                   (1383)
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
        jl        %"block%78"                    //                         [6]
%"block%57":                                     // block                   (1394)
        lit16     648                            // D = 0x288               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      15                             // D += E15                [3]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
%"block%59":                                     // block                   (1416)
        eta       2                              // A = E2                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       14                             // E14 = A                 [2]
        ete       15, 3                          // E3 = E15                [4]
        lit16     648                            // D = 0x288               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        lit16     640                            // D = 0x280               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        lit16     608                            // D = 0x260               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       6                              // E6 = *A                 [3] **** spill related
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        baz       %tn%21                         // skip migrate if !A      [4]
        ld8a                                     // migrate                 [3]
%tn%21:
        ldspawn   %tn%22, 0xf07f                 // D = spawn info          [18]
        spc       %tn%23, 1                      // attempt spawn           [4]
        jl        %tn%24                         // continue                [6]
%tn%23:
        ldc       @featured_partitioned_train.outline_.otd1.1// D = @featured_partitioned_train.outline_.otd1.1[15]
        jale      1                              // call @featured_partitioned_train.outline_.otd1.1[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        addm                                     // threadCount -= 1        [2]
        jmp       %tn%24                         // continue                [4]
%tn%22:
        ldc       @featured_partitioned_train.outline_.otd1.1// D = @featured_partitioned_train.outline_.otd1.1[15]
        jale      1                              // call @featured_partitioned_train.outline_.otd1.1[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        resize    0x30000                        // only keep A & D         [7]
        addm                                     // threadCount -= 1        [2]
        bz        %tn%25                         // branch if last thread   [4]
        release   0                              // quit                    [3]
%tn%25:
        aaim      1                              // A = &continuationValid  [3]
%tn%26:
        ld                                       // D = continuationValid   [1]
        bdz       %tn%26                         // not ready yet           [4]
        aaim      1                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D                  [2]
        jmp       %tn%27                         // jmp over next           [4]
%tn%28:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // D = A                   [2]
%tn%27:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%28                         // D != 0, adjust A        [4]
        lsr       0                              // D = 0x0                 [3]
        rts                                      // resume continuation     [2]
        swapd                                    // D = &continuation[0]    [2]
        dta                                      // A = &continuation[0]    [2]
        swapd                                    // D = 0                   [2]
%tn%24:
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      14                             // D ?= E14                [3]
        td1       39, %._crit_edge30             // E slt D                 [5]
        jl        %"block%78"                    //                         [6]
%._crit_edge30:                                  // block                   (1686)
        ete       14, 2                          // E2 = E14                [4]
        jl        %"block%59"                    //                         [6]
%"block%66":                                     // block                   (1696)
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%69"                    //                         [4]
        jl        %._crit_edge31                 //                         [6]
%"block%69":                                     // block                   (1733)
        lit16     656                            // D = 0x290               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      15                             // D += E15                [3]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
%"block%71":                                     // block                   (1755)
        eta       2                              // A = E2                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       14                             // E14 = A                 [2]
        ete       15, 3                          // E3 = E15                [4]
        lit16     656                            // D = 0x290               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        lit16     608                            // D = 0x260               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        baz       %tn%29                         // skip migrate if !A      [4]
        ld8a                                     // migrate                 [3]
%tn%29:
        ldspawn   %tn%30, 0xf03f                 // D = spawn info          [18]
        spc       %tn%31, 1                      // attempt spawn           [4]
        jl        %tn%32                         // continue                [6]
%tn%31:
        ldc       @featured_partitioned_train.outline_.otd1// D = @featured_partitioned_train.outline_.otd1[15]
        jale      1                              // call @featured_partitioned_train.outline_.otd1[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        addm                                     // threadCount -= 1        [2]
        jmp       %tn%32                         // continue                [4]
%tn%30:
        ldc       @featured_partitioned_train.outline_.otd1// D = @featured_partitioned_train.outline_.otd1[15]
        jale      1                              // call @featured_partitioned_train.outline_.otd1[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        resize    0x30000                        // only keep A & D         [7]
        addm                                     // threadCount -= 1        [2]
        bz        %tn%33                         // branch if last thread   [4]
        release   0                              // quit                    [3]
%tn%33:
        aaim      1                              // A = &continuationValid  [3]
%tn%34:
        ld                                       // D = continuationValid   [1]
        bdz       %tn%34                         // not ready yet           [4]
        aaim      1                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D                  [2]
        jmp       %tn%35                         // jmp over next           [4]
%tn%36:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // D = A                   [2]
%tn%35:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%36                         // D != 0, adjust A        [4]
        lsr       0                              // D = 0x0                 [3]
        rts                                      // resume continuation     [2]
        swapd                                    // D = &continuation[0]    [2]
        dta                                      // A = &continuation[0]    [2]
        swapd                                    // D = 0                   [2]
%tn%32:
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      14                             // D ?= E14                [3]
        td0       39, %"block%78"                // E sge D                 [5]
%._crit_edge32:                                  // block                   (2007)
        ete       14, 2                          // E2 = E14                [4]
        jl        %"block%71"                    //                         [6]
%._crit_edge31:                                  // block                   (2017)
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
%"block%78":                                     // block                   (2022)
        eta       13                             // A = E13                 [2]
        etd       14                             // D = E14                 [2]
        addm                                     // *threadCount += D       [2]
        bdnz      %tn%38                         // kids not done?          [4]
        jmp       %tn%37                         // kids are done           [4]
%tn%38:
        aaim      2                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D == &continuation[0][2]
        jmp       %tn%39                         // skip next inst          [4]
%tn%40:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // A = D                   [2]
%tn%39:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%40                         // Adjust A if D != 0      [4]
        lsr       1                              // D = 0x1                 [3]
        sts                                      // save threadlet state    [2]
        swapd                                    // D = &continuation[0], D2=1[2]
        dta                                      // A = D                   [2]
        swapd                                    // D = 1 (from inst before sts)[2]
        bdz       %tn%37                         // skip if kid             [4]
        aaim      -1                             // A = &continuationValid  [3]
        std                                      // continuationValid = D   [2]
        release   0                              // parent quits            [3]
%tn%37:
        fence                                    // Make sure all ACKs have returned[2]
        ldg       @gradients                     // D = @gradients          [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     576                            // D = 0x240               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @threads_per_cluster           // D = @threads_per_cluster[24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     616                            // D = 0x268               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lit16     616                            // D = 0x268               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2] **** spill related
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @train_sample_count            // D = @train_sample_count [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        lit16     616                            // D = 0x268               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      2                              // D ?= E2                 [3]
        td0       38, %"block%86"                // D sge E                 [5]
        jl        %"block%21"                    //                         [6]
%"block%86":                                     // block                   (2246)
        ldg       @epochs                        // D = @epochs             [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
%"block%88":                                     // block                   (2275)
        ldg       @gamma                         // D = @gamma              [24]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        lit16     608                            // D = 0x260               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        lit16     608                            // D = 0x260               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       4                              // D = E4                  [2] **** spill related
        multe     3                              // D *= E3                 [3]
        srac      24                             // D >>= 24                [4]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       3                              // E3 = *A                 [3] **** spill related
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      3                              // D += E3                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      1                              // D ?= E1                 [3]
        td0       38, %"block%12"                // D sge E                 [5]
        jl        %"block%13"                    //                         [6]
%"block%12":                                     // block                   (2389)
        lit16     544                            // D = 0x220               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     552                            // D = 0x228               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       13                             // E13 = *A                [3] **** spill related
        lit16     560                            // D = 0x230               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       14                             // E14 = *A                [3] **** spill related
        lit16     568                            // D = 0x238               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       15                             // E15 = *A                [3] **** spill related
%tn%0:                                           // block                   (2437)
        eta       0                              // A = newFP               [2]
        lde       0                              // E0 = oldFP              [3]
        ate       11                             // E11 = newFP             [2]
        ldr       @_frame_buckets_+16            // D = bucket              [24]
        dtd2                                     // D2 = FP                 [2]
        dta                                      // A = D                   [2]
%tn%41:
        ld                                       // D = *bucket             [1]
        bdgtz     %tn%42                         // bucket valid?           [4]
        bdz       %tn%42                         // bucket empty?           [4]
        jmp       %tn%41                         // bucket locked           [4]
%tn%42:
        eta       11                             // A = newFP               [2]
        std                                      // *fp = free list         [2]
        swapd                                    //                         [2]
        dta                                      // A = D                   [2]
        swapd                                    //                         [2]
        cas       11                             // bucket changed?         [3]
        bnz       %tn%41                         // if bucket changed, try again[4]
        jmpe      1                              // return                  [3]
        .function_end                            // function size           (2505)
        .global   @get_partial_gradient
        .text
@get_partial_gradient:
        .function_begin                          // entry                   (0)
                                                 // empty prologue          [0]
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       6                              // E6 = *A                 [3]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       7                              // E7 = *A                 [3]
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       8                              // E8 = *A                 [3]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        etd       4                              // D = E4                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        lde       5                              // E5 = *A                 [3]
        etd       4                              // D = E4                  [2]
        sllc      3                              // D <<= 3                 [4]
        addl      8                              // D += 8                  [6]
        dpeta     2                              // A = D + E2              [3]
        lde       2                              // E2 = *A                 [3]
        etd       2                              // D = E2                  [2]
        cmpe      5                              // D ?= E5                 [3]
        td1       39, %"block%20"                // E slt D                 [5]
        jmp       %._crit_edge                   //                         [4]
%"block%20":                                     // block                   (200)
        lsr       0                              // D = 0x0                 [3]
        dte       4                              // E4 = D                  [2]
%"block%25":                                     // block                   (205)
        etd       5                              // D = E5                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     6                              // A = D + E6              [3]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     8                              // A = D + E8              [3]
        lde       9                              // E9 = *A                 [3]
        etd       5                              // D = E5                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     7                              // A = D + E7              [3]
        ld                                       // D = *A                  [1]
        multe     9                              // D *= E9                 [3]
        srac      24                             // D >>= 24                [4]
        dpeta     4                              // A = D + E4              [3]
        ate       4                              // E4 = A                  [2]
        eta       5                              // A = E5                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       5                              // E5 = A                  [2]
        etd       2                              // D = E2                  [2]
        xore      5                              // D ^= E5                 [3]
        bdz       %"block%21"                    //                         [4]
        jmp       %"block%25"                    //                         [4]
%._crit_edge:                                    // block                   (267)
        lsr       0                              // D = 0x0                 [3]
        dte       4                              // E4 = D                  [2]
%"block%21":                                     // block                   (272)
        ldg       @gradients                     // D = @gradients          [24]
        dta                                      // A = D                   [2]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       4                              // D = E4                  [2]
        radd                                     // *A += D                 [2]
        jmpe      1                              // return void             [3]
        .function_end                            // function size           (315)
        .global   @child_train_neg
        .text
@child_train_neg:
        .function_begin                          // entry                   (0)
                                                 // empty prologue          [0]
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       6                              // E6 = *A                 [3]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       7                              // E7 = *A                 [3]
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       8                              // E8 = *A                 [3]
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       9                              // E9 = *A                 [3]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        lde       10                             // E10 = *A                [3]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        addl      8                              // D += 8                  [6]
        dpeta     2                              // A = D + E2              [3]
        ate       3                              // E3 = A                  [2]
        eta       3                              // A = E3                  [2]
        ld                                       // D = *A                  [1]
        cmpe      10                             // D ?= E10                [3]
        td1       39, %"block%26"                // E slt D                 [5]
        jmp       %"block%25"                    //                         [4]
%"block%26":                                     // block                   (239)
        etd       10                             // D = E10                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     6                              // A = D + E6              [3]
        lde       2                              // E2 = *A                 [3]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     8                              // A = D + E8              [3]
        ate       11                             // E11 = A                 [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     9                              // A = D + E9              [3]
        ld                                       // D = *A                  [1]
        multe     4                              // D *= E4                 [3]
        srac      24                             // D >>= 24                [4]
        dte       2                              // E2 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        sube      2                              // D -= E2                 [3]
        dte       2                              // E2 = D                  [2]
        etd       10                             // D = E10                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     7                              // A = D + E7              [3]
        ld                                       // D = *A                  [1]
        multe     5                              // D *= E5                 [3]
        srac      24                             // D >>= 24                [4]
        eta       11                             // A = E11                 [2]
        add                                      // D += *A                 [2]
        multe     2                              // D *= E2                 [3]
        srac      24                             // D >>= 24                [4]
        eta       11                             // A = E11                 [2]
        wrd                                      // *A = D                  [2]
        eta       10                             // A = E10                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       10                             // E10 = A                 [2]
        eta       3                              // A = E3                  [2]
        ld                                       // D = *A                  [1]
        cmpe      10                             // D ?= E10                [3]
        td0       39, %"block%25"                // E sge D                 [5]
        jmp       %"block%26"                    //                         [4]
%"block%25":                                     // block                   (347)
        jmpe      1                              // return void             [3]
        .function_end                            // function size           (350)
        .global   @child_train_pos
        .text
@child_train_pos:
        .function_begin                          // entry                   (0)
                                                 // empty prologue          [0]
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       6                              // E6 = *A                 [3]
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       7                              // E7 = *A                 [3]
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       8                              // E8 = *A                 [3]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        lde       9                              // E9 = *A                 [3]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        addl      8                              // D += 8                  [6]
        dpeta     2                              // A = D + E2              [3]
        ate       2                              // E2 = A                  [2]
        eta       2                              // A = E2                  [2]
        ld                                       // D = *A                  [1]
        cmpe      9                              // D ?= E9                 [3]
        td1       39, %"block%22"                // E slt D                 [5]
        jmp       %"block%21"                    //                         [4]
%"block%22":                                     // block                   (200)
        etd       9                              // D = E9                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     6                              // A = D + E6              [3]
        lde       3                              // E3 = *A                 [3]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     7                              // A = D + E7              [3]
        ate       5                              // E5 = A                  [2]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     8                              // A = D + E8              [3]
        ld                                       // D = *A                  [1]
        multe     4                              // D *= E4                 [3]
        srac      24                             // D >>= 24                [4]
        dte       3                              // E3 = D                  [2]
        eta       5                              // A = E5                  [2]
        lde       10                             // E10 = *A                [3]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        sube      3                              // D -= E3                 [3]
        multe     10                             // D *= E10                [3]
        srac      24                             // D >>= 24                [4]
        eta       5                              // A = E5                  [2]
        wrd                                      // *A = D                  [2]
        eta       9                              // A = E9                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       9                              // E9 = A                  [2]
        eta       2                              // A = E2                  [2]
        ld                                       // D = *A                  [1]
        cmpe      9                              // D ?= E9                 [3]
        td0       39, %"block%21"                // E sge D                 [5]
        jmp       %"block%22"                    //                         [4]
%"block%21":                                     // block                   (290)
        jmpe      1                              // return void             [3]
        .function_end                            // function size           (293)
        .text
@featured_partitioned_train.outline_.otd1:
        .function_begin                          // entry                   (0)
                                                 // empty prologue          [0]
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       6                              // E6 = *A                 [3]
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       7                              // E7 = *A                 [3]
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       8                              // E8 = *A                 [3]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        lde       9                              // E9 = *A                 [3]
        etd       4                              // D = E4                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        ate       2                              // E2 = A                  [2]
        eta       2                              // A = E2                  [2]
        ld                                       // D = *A                  [1]
        cmpe      9                              // D ?= E9                 [3]
        td1       39, %"block%22"                // E slt D                 [5]
        jmp       %"block%21"                    //                         [4]
%"block%22":                                     // block                   (194)
        etd       9                              // D = E9                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     6                              // A = D + E6              [3]
        lde       3                              // E3 = *A                 [3]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     7                              // A = D + E7              [3]
        ate       4                              // E4 = A                  [2]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     8                              // A = D + E8              [3]
        ld                                       // D = *A                  [1]
        multe     5                              // D *= E5                 [3]
        srac      24                             // D >>= 24                [4]
        dte       3                              // E3 = D                  [2]
        eta       4                              // A = E4                  [2]
        lde       10                             // E10 = *A                [3]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        sube      3                              // D -= E3                 [3]
        multe     10                             // D *= E10                [3]
        srac      24                             // D >>= 24                [4]
        eta       4                              // A = E4                  [2]
        wrd                                      // *A = D                  [2]
        eta       9                              // A = E9                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       9                              // E9 = A                  [2]
        eta       2                              // A = E2                  [2]
        ld                                       // D = *A                  [1]
        cmpe      9                              // D ?= E9                 [3]
        td0       39, %"block%21"                // E sge D                 [5]
        jmp       %"block%22"                    //                         [4]
%"block%21":                                     // block                   (284)
        jmpe      1                              // return void             [3]
        .function_end                            // function size           (287)
        .text
@featured_partitioned_train.outline_.otd1.1:
        .function_begin                          // entry                   (0)
                                                 // empty prologue          [0]
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       7                              // E7 = *A                 [3]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       8                              // E8 = *A                 [3]
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       9                              // E9 = *A                 [3]
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       10                             // E10 = *A                [3]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        lde       3                              // E3 = *A                 [3]
        etd       4                              // D = E4                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        ate       4                              // E4 = A                  [2]
        eta       4                              // A = E4                  [2]
        ld                                       // D = *A                  [1]
        cmpe      3                              // D ?= E3                 [3]
        td1       39, %"block%26"                // E slt D                 [5]
        jmp       %"block%25"                    //                         [4]
%"block%26":                                     // block                   (233)
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     7                              // A = D + E7              [3]
        lde       2                              // E2 = *A                 [3]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     9                              // A = D + E9              [3]
        ate       11                             // E11 = A                 [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     10                             // A = D + E10             [3]
        ld                                       // D = *A                  [1]
        multe     6                              // D *= E6                 [3]
        srac      24                             // D >>= 24                [4]
        dte       2                              // E2 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        sube      2                              // D -= E2                 [3]
        dte       2                              // E2 = D                  [2]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     8                              // A = D + E8              [3]
        ld                                       // D = *A                  [1]
        multe     5                              // D *= E5                 [3]
        srac      24                             // D >>= 24                [4]
        eta       11                             // A = E11                 [2]
        add                                      // D += *A                 [2]
        multe     2                              // D *= E2                 [3]
        srac      24                             // D >>= 24                [4]
        eta       11                             // A = E11                 [2]
        wrd                                      // *A = D                  [2]
        eta       3                              // A = E3                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       3                              // E3 = A                  [2]
        eta       4                              // A = E4                  [2]
        ld                                       // D = *A                  [1]
        cmpe      3                              // D ?= E3                 [3]
        td0       39, %"block%25"                // E sge D                 [5]
        jmp       %"block%26"                    //                         [4]
%"block%25":                                     // block                   (341)
        jmpe      1                              // return void             [3]
        .function_end                            // function size           (344)
        .text
@featured_partitioned_train.outline_.otd1.2:
        .function_begin                          // entry                   (0)
                                                 // empty prologue          [0]
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       6                              // E6 = *A                 [3]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       7                              // E7 = *A                 [3]
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       8                              // E8 = *A                 [3]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        lde       3                              // E3 = *A                 [3]
        etd       4                              // D = E4                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        lde       2                              // E2 = *A                 [3]
        etd       2                              // D = E2                  [2]
        cmpe      3                              // D ?= E3                 [3]
        td1       39, %"block%20"                // E slt D                 [5]
        jmp       %._crit_edge                   //                         [4]
%"block%20":                                     // block                   (194)
        lsr       0                              // D = 0x0                 [3]
        dte       4                              // E4 = D                  [2]
%"block%25":                                     // block                   (199)
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     6                              // A = D + E6              [3]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     8                              // A = D + E8              [3]
        lde       9                              // E9 = *A                 [3]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     7                              // A = D + E7              [3]
        ld                                       // D = *A                  [1]
        multe     9                              // D *= E9                 [3]
        srac      24                             // D >>= 24                [4]
        dpeta     4                              // A = D + E4              [3]
        ate       4                              // E4 = A                  [2]
        eta       3                              // A = E3                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       3                              // E3 = A                  [2]
        etd       2                              // D = E2                  [2]
        xore      3                              // D ^= E3                 [3]
        bdz       %"block%21"                    //                         [4]
        jmp       %"block%25"                    //                         [4]
%._crit_edge:                                    // block                   (261)
        lsr       0                              // D = 0x0                 [3]
        dte       4                              // E4 = D                  [2]
%"block%21":                                     // block                   (266)
        ldg       @gradients                     // D = @gradients          [24]
        dta                                      // A = D                   [2]
        etd       5                              // D = E5                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       4                              // D = E4                  [2]
        radd                                     // *A += D                 [2]
        jmpe      1                              // return void             [3]
        .function_end                            // function size           (309)
        .text
@train.outline_.otd1:
        .function_begin                          // entry                   (0)
                                                 // empty prologue          [0]
        ldg       @working_vec                   // D = @working_vec        [24]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     5                              // A = D + E5              [3]
        lde       2                              // E2 = *A                 [3]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     5                              // A = D + E5              [3]
        lde       5                              // E5 = *A                 [3]
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      4                              // D ?= E4                 [3]
        td1       39, %"block%14"                // D sgt E                 [5]
        jl        %"block%13"                    //                         [6]
%"block%14":                                     // block                   (133)
        etd       4                              // D = E4                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        lde       6                              // E6 = *A                 [3]
        ldg       @lambda                        // D = @lambda             [24]
        dta                                      // A = D                   [2]
        lde       7                              // E7 = *A                 [3]
        etd       4                              // D = E4                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     3                              // A = D + E3              [3]
        etd       6                              // D = E6                  [2]
        multe     7                              // D *= E7                 [3]
        srac      24                             // D >>= 24                [4]
        radd                                     // *A += D                 [2]
        ldg       @lambda                        // D = @lambda             [24]
        dta                                      // A = D                   [2]
        lde       7                              // E7 = *A                 [3]
        etd       4                              // D = E4                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     5                              // A = D + E5              [3]
        etd       6                              // D = E6                  [2]
        multe     7                              // D *= E7                 [3]
        srac      24                             // D >>= 24                [4]
        radd                                     // *A += D                 [2]
        eta       4                              // A = E4                  [2]
        aaim      2                              // A += 16                 [3]
        ate       4                              // E4 = A                  [2]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      4                              // D ?= E4                 [3]
        td0       39, %"block%13"                // E sge D                 [5]
        jl        %"block%14"                    //                         [6]
%"block%13":                                     // block                   (291)
        jmpe      1                              // return void             [3]
        .function_end                            // function size           (294)
        .text
@train.outline_.otd1.3:
        .function_begin                          // entry                   (0)
                                                 // empty prologue          [0]
        ldg       @working_vec                   // D = @working_vec        [24]
        dta                                      // A = D                   [2]
        lde       6                              // E6 = *A                 [3]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     6                              // A = D + E6              [3]
        lde       8                              // E8 = *A                 [3]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     6                              // A = D + E6              [3]
        lde       10                             // E10 = *A                [3]
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      4                              // D ?= E4                 [3]
        td1       39, %"block%15"                // D sgt E                 [5]
        jl        %"block%14"                    //                         [6]
%"block%15":                                     // block                   (133)
        etd       4                              // D = E4                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        ate       3                              // E3 = A                  [2]
        eta       3                              // A = E3                  [2]
        lde       6                              // E6 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        eta       3                              // A = E3                  [2]
        wrd                                      // *A = D                  [2]
        etd       4                              // D = E4                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     8                              // A = D + E8              [3]
        ate       7                              // E7 = A                  [2]
        eta       7                              // A = E7                  [2]
        ld                                       // D = *A                  [1]
        sube      6                              // D -= E6                 [3]
        multe     5                              // D *= E5                 [3]
        srac      24                             // D >>= 24                [4]
        dte       9                              // E9 = D                  [2]
        etd       4                              // D = E4                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     10                             // A = D + E10             [3]
        etd       9                              // D = E9                  [2]
        radd                                     // *A += D                 [2]
        ldg       @one_min_lambda                // D = @one_min_lambda     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        multe     6                              // D *= E6                 [3]
        srac      24                             // D >>= 24                [4]
        dpeta     9                              // A = D + E9              [3]
        ate       6                              // E6 = A                  [2]
        etd       6                              // D = E6                  [2]
        eta       3                              // A = E3                  [2]
        addm                                     // *A += D                 [2]
        etd       6                              // D = E6                  [2]
        eta       7                              // A = E7                  [2]
        wrd                                      // *A = D                  [2]
        eta       4                              // A = E4                  [2]
        aaim      2                              // A += 16                 [3]
        ate       4                              // E4 = A                  [2]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      4                              // D ?= E4                 [3]
        td0       39, %"block%14"                // E sge D                 [5]
        jl        %"block%15"                    //                         [6]
%"block%14":                                     // block                   (294)
        jmpe      1                              // return void             [3]
        .function_end                            // function size           (297)
        .text
@train.cilkhelper:
        .function_begin                          // entry                   (0)
        ldr       @_frame_buckets_+16            // D = &bucket             [24]
        dta                                      // A = &bucket             [2]
        ata2                                     // A2 = &bucket            [2]
%tn%3:
        lsr       3                              // D = -1                  [3]
        swap                                     // lock bucket & put cur bucket value in D[2]
        bdgtz     %tn%4                          // won lock, jump to that  [4]
        jmp       %tn%5                          // didn't win lock, jump to that[4]
%tn%4:
        dta                                      // A = new FP              [2]
        etd       0                              // D = caller's FP         [2]
        ate       0                              // E0 = new FP             [2]
        swap                                     // Mem[A] = caller FP; D = next FP[2]
        swapa                                    // A=&bucket, A2 = new FP  [2]
        wrd                                      // *A = next FP (unlocks bucket)[2]
        swapa                                    // A = new FP, A2 = &bucket[2]
        jl        %tn%2                          // jump to done            [6]
%tn%5:
        bdz       %tn%1                          // bucket was empty, have to malloc a frame[4]
        jmp       %tn%3                          // *bucket was negative, retry frame cache[4]
%tn%1:
        wrd                                      // *bucket = 0; unlock frame cache and set to empty[2]
        etd       0                              // D = caller's FP         [2]
        dtd2                                     // D2 = caller's FP        [2]
        lsr       8                              // D = ThreadID            [3]
        muma1     2                              // D = D & 0x7 - get array index[4]
        sllc      8                              // D = D << 8 - multiply array index by 256b in malloc arena[4]
        dte       0                              // E0 = D                  [2]
        ldr       @_malloc_arenas_               // D = &_malloc_arenas_[0] [24]
        dpeta     0                              // A = &_malloc_arenas_[tid & 0x7] = reg_save_area[3]
        ata2                                     // A2 = &reg_save_area (save for restore)[2]
%tn%6:
        lit       8                              // D = 8                   [4]
        addms                                    // *A += D; D = *A         [2]
        bdz       %tn%8                          // branch if unlocked      [4]
        muma1     6                              //  D &= 0x7F              [4]
%tn%7:
        aaim      0                              // A += 0 (busy no-op)     [3]
        bnzd      %tn%7                          // branch if D != 0        [4]
        jmp       %tn%6                          // retry lock              [4]
%tn%8:
        swapd                                    //                         [2]
        dte       0                              // E0 = old FP             [2]
        aaim      1                              // A += 8                  [3]
        mts       0x1,0x1                        // set tcb.WO              [6]
        ste       1                              // *A = E1                 [3]
        aaim      1                              // A += 8                  [3]
        ste       2                              // *A = E2                 [3]
        aaim      1                              // A += 8                  [3]
        ste       3                              // *A = E3                 [3]
        aaim      1                              // A += 8                  [3]
        ste       4                              // *A = E4                 [3]
        aaim      1                              // A += 8                  [3]
        ste       5                              // *A = E5                 [3]
        mts       0x1,0                          // clear tcb.WO            [6]
        lit16     1024                           // D = 0x400               [6]
        dte       2                              // E2 = bucket size        [2]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // call malloc             [3]
        eta       2                              // A = new FP              [2]
        ste       0                              // store old FP            [3]
        ate       0                              // E0 = new FP             [2]
        swapa                                    // A = A2 (restore &reg_save_area)[2]
        atd                                      // D = A = &reg save area  [2]
        aaim      1                              // A += 8                  [3]
        lde       1                              // E1 = *A                 [3]
        aaim      1                              // A += 8                  [3]
        lde       2                              // E2 = *A                 [3]
        aaim      1                              // A += 8                  [3]
        lde       3                              // E3 = *A                 [3]
        aaim      1                              // A += 8                  [3]
        lde       4                              // E4 = *A                 [3]
        aaim      1                              // A += 8                  [3]
        lde       5                              // E5 = *A                 [3]
        dta                                      // A = &reg save area      [2]
        lsr       0                              // D = 0x0                 [3]
        std                                      // unlock reg save area    [2]
%tn%2:
                                                 // end of prologue         (334)
        lit16     584                            // D = 0x248               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     576                            // D = 0x240               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       14                             // D = E14                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     568                            // D = 0x238               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       13                             // D = E13                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     560                            // D = 0x230               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ete       3, 14                          // E14 = E3                [4]
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       4                              // D = E4                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     600                            // D = 0x258               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       5                              // D = E5                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        ate       13                             // E13 = A                 [2]
        lit16     608                            // D = 0x260               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       0                              // D = E0                  [2]
        addl      544                            // D += 544                [6]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     616                            // D = 0x268               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       0                              // D = E0                  [2]
        addl      552                            // D += 552                [6]
        wrd                                      // *A = D                  [2] **** spill related
        eta       13                             // A = E13                 [2]
        lsr       0                              // D = 0x0                 [3]
        stdia                                    // thread_count = 0        [2]
        std                                      // continuation_valid = 0  [2]
        ldg       @working_vec                   // D = @working_vec        [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        lde       3                              // E3 = *A                 [3]
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       3                              // D = E3                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     608                            // D = 0x260               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       3                              // E3 = *A                 [3] **** spill related
        ldg       @upstream                      // D = @upstream           [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        ld                                       // D = *A                  [1]
        eta       3                              // A = E3                  [2] **** spill related
        wrd                                      // *A = D                  [2]
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       4                              // E4 = *A                 [3]
        lit16     616                            // D = 0x268               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%9                          // A = *A                  [4] **** spill related
%tn%9:
        etd       4                              // D = E4                  [2]
        wrd                                      // *A = D                  [2]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @train_c                       // D = @train_c            [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     640                            // D = 0x280               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       15                             // E15 = *A                [3]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     648                            // D = 0x288               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     656                            // D = 0x290               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lit16     1337                           // D = 0x539               [6]
        multe     2                              // D *= E2                 [3]
        addl      1337                           // D += 1337               [6]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        xor                                      // D ^= *A                 [2]
        bdz       %tn%10                         //                         [4]
        lsr       0                              // D = 0                   [3]
        jmp       %tn%11                         //                         [4]
%tn%10:
        lsr       1                              // D = 1                   [3]
%tn%11:
        dte       1                              // E1 = D                  [2]
        ldg       @total_evaluated_sample_count  // D = @total_evaluated_sample_count[24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       2                              // E2 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        eta       2                              // A = E2                  [2]
        addm                                     // s=*A+D; *A=s; D=s       [2]
        dte       2                              // E2 = D                  [2]
        ldg       @cluster_samples               // D = @cluster_samples    [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        etd       3                              // D = E3                  [2]
        cmpe      2                              // D ?= E2                 [3]
        srlc      39                             // shift bit 39(sgt) to 0  [4]
        muma1     0                              // D &= 1                  [4]
        dte       2                              // E2 = D                  [2]
        etd       1                              // D = E1                  [2]
        td0       0, %"block%135"                // if LSB is clear         [5]
        jl        %"block%47"                    //                         [6]
%"block%135":                                    // block                   (1073)
        etd       2                              // D = E2                  [2]
        td1       0, %"block%137"                // if LSB is set           [5]
        jl        %"block%265"                   //                         [6]
%"block%137":                                    // block                   (1086)
        ldg       @token                         // D = @token              [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        xor                                      // D ^= *A                 [2]
        bdz       %"block%143"                   //                         [4]
        jl        %"block%178"                   //                         [6]
%"block%143":                                    // block                   (1137)
        ldg       @samples_since_token           // D = @samples_since_token[24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        eta       1                              // A = E1                  [2]
        addm                                     // s=*A+D; *A=s; D=s       [2]
        dte       1                              // E1 = D                  [2]
        ldg       @update_period                 // D = @update_period      [24]
        dta                                      // A = D                   [2]
        etd       1                              // D = E1                  [2]
        xor                                      // D ^= *A                 [2]
        bdz       %"block%149"                   //                         [4]
        jl        %"block%178"                   //                         [6]
%"block%149":                                    // block                   (1222)
        ldg       @token                         // D = @token              [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        eta       1                              // A = E1                  [2]
        swap                                     // t=*A; *A=D; D=t         [2]
        dte       1                              // E1 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        dte       4                              // E4 = D                  [2]
%"block%153":                                    // block                   (1272)
        lit16     672                            // D = 0x2A0               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      4                              // D += E4                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        ete       14, 2                          // E2 = E14                [4]
        ldg       @upstream                      // D = @upstream           [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        lit16     600                            // D = 0x258               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        lit16     616                            // D = 0x268               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%12                         // A = *A                  [4] **** spill related
%tn%12:
        baz       %tn%13                         // skip migrate if !A      [4]
        ld8a                                     // migrate                 [3]
%tn%13:
        ldspawn   %tn%14, 0xf03f                 // D = spawn info          [18]
        spc       %tn%15, 1                      // attempt spawn           [4]
        jl        %tn%16                         // continue                [6]
%tn%15:
        ldc       @train.outline_.otd1.3         // D = @train.outline_.otd1.3[15]
        jale      1                              // call @train.outline_.otd1.3[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        addm                                     // threadCount -= 1        [2]
        jmp       %tn%16                         // continue                [4]
%tn%14:
        ldc       @train.outline_.otd1.3         // D = @train.outline_.otd1.3[15]
        jale      1                              // call @train.outline_.otd1.3[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        resize    0x30000                        // only keep A & D         [7]
        addm                                     // threadCount -= 1        [2]
        bz        %tn%17                         // branch if last thread   [4]
        release   0                              // quit                    [3]
%tn%17:
        aaim      1                              // A = &continuationValid  [3]
%tn%18:
        ld                                       // D = continuationValid   [1]
        bdz       %tn%18                         // not ready yet           [4]
        aaim      1                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D                  [2]
        jmp       %tn%19                         // jmp over next           [4]
%tn%20:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // D = A                   [2]
%tn%19:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%20                         // D != 0, adjust A        [4]
        lsr       0                              // D = 0x0                 [3]
        rts                                      // resume continuation     [2]
        swapd                                    // D = &continuation[0]    [2]
        dta                                      // A = &continuation[0]    [2]
        swapd                                    // D = 0                   [2]
%tn%16:
        lit16     672                            // D = 0x2A0               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lit       16                             // D = 0x10                [4]
        xor                                      // D ^= *A                 [2]
        bdz       %"block%160"                   //                         [4]
%._crit_edge168:                                 // block                   (1522)
        lit16     672                            // D = 0x2A0               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        jl        %"block%153"                   //                         [6]
%"block%160":                                    // block                   (1540)
        lit16     680                            // D = 0x2A8               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
%"block%161":                                    // block                   (1554)
        ldg       @upstream                      // D = @upstream           [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ete       14, 3                          // E3 = E14                [4]
        lit16     680                            // D = 0x2A8               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        lit16     608                            // D = 0x260               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%21                         // A = *A                  [4] **** spill related
%tn%21:
        baz       %tn%22                         // skip migrate if !A      [4]
        ld8a                                     // migrate                 [3]
%tn%22:
        ldspawn   %tn%23, 0xf01f                 // D = spawn info          [18]
        spc       %tn%24, 1                      // attempt spawn           [4]
        jl        %tn%25                         // continue                [6]
%tn%24:
        ldc       @train.outline_.otd1           // D = @train.outline_.otd1[15]
        jale      1                              // call @train.outline_.otd1[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        addm                                     // threadCount -= 1        [2]
        jmp       %tn%25                         // continue                [4]
%tn%23:
        ldc       @train.outline_.otd1           // D = @train.outline_.otd1[15]
        jale      1                              // call @train.outline_.otd1[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        resize    0x30000                        // only keep A & D         [7]
        addm                                     // threadCount -= 1        [2]
        bz        %tn%26                         // branch if last thread   [4]
        release   0                              // quit                    [3]
%tn%26:
        aaim      1                              // A = &continuationValid  [3]
%tn%27:
        ld                                       // D = continuationValid   [1]
        bdz       %tn%27                         // not ready yet           [4]
        aaim      1                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D                  [2]
        jmp       %tn%28                         // jmp over next           [4]
%tn%29:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // D = A                   [2]
%tn%28:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%29                         // D != 0, adjust A        [4]
        lsr       0                              // D = 0x0                 [3]
        rts                                      // resume continuation     [2]
        swapd                                    // D = &continuation[0]    [2]
        dta                                      // A = &continuation[0]    [2]
        swapd                                    // D = 0                   [2]
%tn%25:
        lit16     680                            // D = 0x2A8               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     680                            // D = 0x2A8               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     680                            // D = 0x2A8               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lit       16                             // D = 0x10                [4]
        xor                                      // D ^= *A                 [2]
        bdz       %"block%168"                   //                         [4]
        jl        %"block%161"                   //                         [6]
%"block%168":                                    // block                   (1822)
        eta       13                             // A = E13                 [2]
        lit       32                             // D = 0x20                [4]
        addm                                     // *threadCount += D       [2]
        bdnz      %tn%31                         // kids not done?          [4]
        jmp       %tn%30                         // kids are done           [4]
%tn%31:
        aaim      2                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D == &continuation[0][2]
        jmp       %tn%32                         // skip next inst          [4]
%tn%33:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // A = D                   [2]
%tn%32:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%33                         // Adjust A if D != 0      [4]
        lsr       1                              // D = 0x1                 [3]
        sts                                      // save threadlet state    [2]
        swapd                                    // D = &continuation[0], D2=1[2]
        dta                                      // A = D                   [2]
        swapd                                    // D = 1 (from inst before sts)[2]
        bdz       %tn%30                         // skip if kid             [4]
        aaim      -1                             // A = &continuationValid  [3]
        std                                      // continuationValid = D   [2]
        release   0                              // parent quits            [3]
%tn%30:
        fence                                    // Make sure all ACKs have returned[2]
        ldg       @token                         // D = @token              [24]
        dte       1                              // E1 = D                  [2]
        ldg       @upstream                      // D = @upstream           [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        eta       1                              // A = E1                  [2]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        eta       1                              // A = E1                  [2]
        swap                                     // t=*A; *A=D; D=t         [2]
        dte       1                              // E1 = D                  [2]
        ldg       @samples_since_token           // D = @samples_since_token[24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        eta       1                              // A = E1                  [2]
        swap                                     // t=*A; *A=D; D=t         [2]
        dte       1                              // E1 = D                  [2]
%"block%178":                                    // block                   (2014)
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        srlc      12                             // D >>= 12                [4]
        xore      1                              // D ^= E1                 [3]
        dte       1                              // E1 = D                  [2]
        etd       1                              // D = E1                  [2]
        sllc      25                             // D <<= 25                [4]
        xore      1                              // D ^= E1                 [3]
        dte       1                              // E1 = D                  [2]
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        srlc      27                             // D >>= 27                [4]
        xore      1                              // D ^= E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        ldg       @cluster_samples               // D = @cluster_samples    [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        lit16     9541                           // D = 0x2545              [6]
        sill      62609                          // D = 0x2545F491          [6]
        sill      20332                          // D = 0x2545F4914F6C      [6]
        sill      56605                          // D = 0x2545F4914F6CDD1D  [6]
        multe     1                              // D *= E1                 [3]
        udive     2                              // D2 %= E2                [3]
        swapd                                    // D = D2                  [2]
        dte       1                              // E1 = D                  [2]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       6                              // E6 = *A                 [3]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        addl      8                              // D += 8                  [6]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        lit16     640                            // D = 0x280               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        etd       5                              // D = E5                  [2]
        cmpe      6                              // D ?= E6                 [3]
        srlc      39                             // shift bit 39(sgt) to 0  [4]
        muma1     0                              // D &= 1                  [4]
        dte       2                              // E2 = D                  [2]
        etd       2                              // D = E2                  [2]
        td1       0, %"block%198"                // if LSB is set           [5]
%._crit_edge170:                                 // block                   (2255)
        lsr       0                              // D = 0x0                 [3]
        dte       4                              // E4 = D                  [2]
        jmp       %"block%213"                   //                         [4]
%"block%198":                                    // block                   (2264)
        ete       6, 3                           // E3 = E6                 [4]
        lsr       0                              // D = 0x0                 [3]
        dte       4                              // E4 = D                  [2]
%"block%199":                                    // block                   (2273)
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       7                              // E7 = *A                 [3] **** spill related
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     15                             // A = D + E15             [3]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     7                              // A = D + E7              [3]
        lde       7                              // E7 = *A                 [3]
        lit16     648                            // D = 0x288               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        multe     7                              // D *= E7                 [3]
        srac      24                             // D >>= 24                [4]
        dpeta     4                              // A = D + E4              [3]
        ate       4                              // E4 = A                  [2]
        eta       3                              // A = E3                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       3                              // E3 = A                  [2]
        etd       5                              // D = E5                  [2]
        xore      3                              // D ^= E3                 [3]
        bdz       %"block%213"                   //                         [4]
        jmp       %"block%199"                   //                         [4]
%"block%213":                                    // block                   (2357)
        etd       1                              // D = E1                  [2]
        multe     4                              // D *= E4                 [3]
        dte       3                              // E3 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        cmpe      3                              // D ?= E3                 [3]
        td1       39, %"block%217"               // E slt D                 [5]
        jl        %"block%240"                   //                         [6]
%"block%217":                                    // block                   (2385)
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        multe     1                              // D *= E1                 [3]
        dte       1                              // E1 = D                  [2]
        etd       2                              // D = E2                  [2]
        td1       0, %"block%220"                // if LSB is set           [5]
        jl        %"block%257"                   //                         [6]
%"block%220":                                    // block                   (2413)
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     15                             // A = D + E15             [3]
        lde       2                              // E2 = *A                 [3]
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dte       3                              // E3 = D                  [2]
        lit16     656                            // D = 0x290               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        multe     2                              // D *= E2                 [3]
        srac      24                             // D >>= 24                [4]
        dte       2                              // E2 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        sube      2                              // D -= E2                 [3]
        dte       2                              // E2 = D                  [2]
        lit16     648                            // D = 0x288               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        multe     1                              // D *= E1                 [3]
        srac      24                             // D >>= 24                [4]
        eta       3                              // A = E3                  [2]
        add                                      // D += *A                 [2]
        multe     2                              // D *= E2                 [3]
        srac      24                             // D >>= 24                [4]
        eta       3                              // A = E3                  [2]
        wrd                                      // *A = D                  [2]
        eta       6                              // A = E6                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       6                              // E6 = A                  [2]
        etd       5                              // D = E5                  [2]
        xore      6                              // D ^= E6                 [3]
        bdz       %tn%34                         //                         [4]
        jl        %"block%220"                   //                         [6]
%tn%34:
        jl        %"block%257"                   //                         [6]
%"block%240":                                    // block                   (2567)
        etd       2                              // D = E2                  [2]
        td1       0, %"block%242"                // if LSB is set           [5]
        jmp       %"block%257"                   //                         [4]
%"block%242":                                    // block                   (2578)
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     15                             // A = D + E15             [3]
        lde       1                              // E1 = *A                 [3]
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dte       2                              // E2 = D                  [2]
        lit16     656                            // D = 0x290               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        multe     1                              // D *= E1                 [3]
        srac      24                             // D >>= 24                [4]
        dte       1                              // E1 = D                  [2]
        eta       2                              // A = E2                  [2]
        lde       3                              // E3 = *A                 [3]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        sube      1                              // D -= E1                 [3]
        multe     3                              // D *= E3                 [3]
        srac      24                             // D >>= 24                [4]
        eta       2                              // A = E2                  [2]
        wrd                                      // *A = D                  [2]
        eta       6                              // A = E6                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       6                              // E6 = A                  [2]
        etd       5                              // D = E5                  [2]
        xore      6                              // D ^= E6                 [3]
        bdz       %"block%257"                   //                         [4]
        jmp       %"block%242"                   //                         [4]
%"block%257":                                    // block                   (2696)
        ldg       @total_evaluated_sample_count  // D = @total_evaluated_sample_count[24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        eta       1                              // A = E1                  [2]
        addm                                     // s=*A+D; *A=s; D=s       [2]
        dte       1                              // E1 = D                  [2]
        ldg       @cluster_samples               // D = @cluster_samples    [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      1                              // D ?= E1                 [3]
        td1       39, %tn%35                     // E slt D                 [5]
        jl        %"block%265"                   //                         [6]
%tn%35:
        jl        %"block%137"                   //                         [6]
%"block%47":                                     // block                   (2798)
        etd       2                              // D = E2                  [2]
        td1       0, %"block%49"                 // if LSB is set           [5]
        jl        %"block%265"                   //                         [6]
%"block%49":                                     // block                   (2811)
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        srlc      12                             // D >>= 12                [4]
        xore      1                              // D ^= E1                 [3]
        dte       1                              // E1 = D                  [2]
        etd       1                              // D = E1                  [2]
        sllc      25                             // D <<= 25                [4]
        xore      1                              // D ^= E1                 [3]
        dte       1                              // E1 = D                  [2]
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        srlc      27                             // D >>= 27                [4]
        xore      1                              // D ^= E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     9541                           // D = 0x2545              [6]
        sill      62609                          // D = 0x2545F491          [6]
        sill      20332                          // D = 0x2545F4914F6C      [6]
        sill      56605                          // D = 0x2545F4914F6CDD1D  [6]
        multe     1                              // D *= E1                 [3]
        udive     3                              // D2 %= E3                [3]
        swapd                                    // D = D2                  [2]
        dte       1                              // E1 = D                  [2]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       7                              // E7 = *A                 [3]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        addl      8                              // D += 8                  [6]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       6                              // E6 = *A                 [3]
        lit16     640                            // D = 0x280               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        etd       6                              // D = E6                  [2]
        cmpe      7                              // D ?= E7                 [3]
        srlc      39                             // shift bit 39(sgt) to 0  [4]
        muma1     0                              // D &= 1                  [4]
        dte       2                              // E2 = D                  [2]
        etd       2                              // D = E2                  [2]
        td1       0, %"block%68"                 // if LSB is set           [5]
        jmp       %._crit_edge158                //                         [4]
%"block%68":                                     // block                   (3017)
        ete       7, 3                           // E3 = E7                 [4]
        lsr       0                              // D = 0x0                 [3]
        dte       5                              // E5 = D                  [2]
%"block%69":                                     // block                   (3026)
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     15                             // A = D + E15             [3]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     4                              // A = D + E4              [3]
        lde       8                              // E8 = *A                 [3]
        lit16     648                            // D = 0x288               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        multe     8                              // D *= E8                 [3]
        srac      24                             // D >>= 24                [4]
        dpeta     5                              // A = D + E5              [3]
        ate       5                              // E5 = A                  [2]
        eta       3                              // A = E3                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       3                              // E3 = A                  [2]
        etd       6                              // D = E6                  [2]
        xore      3                              // D ^= E3                 [3]
        bdz       %"block%83"                    //                         [4]
        jmp       %"block%69"                    //                         [4]
%._crit_edge158:                                 // block                   (3098)
        lsr       0                              // D = 0x0                 [3]
        dte       5                              // E5 = D                  [2]
%"block%83":                                     // block                   (3103)
        etd       1                              // D = E1                  [2]
        multe     5                              // D *= E5                 [3]
        dte       3                              // E3 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        cmpe      3                              // D ?= E3                 [3]
        td1       39, %"block%87"                // E slt D                 [5]
        jl        %"block%110"                   //                         [6]
%"block%87":                                     // block                   (3131)
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        multe     1                              // D *= E1                 [3]
        dte       1                              // E1 = D                  [2]
        etd       2                              // D = E2                  [2]
        td1       0, %"block%90"                 // if LSB is set           [5]
        jl        %"block%127"                   //                         [6]
%"block%90":                                     // block                   (3159)
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     15                             // A = D + E15             [3]
        lde       2                              // E2 = *A                 [3]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     4                              // A = D + E4              [3]
        ate       3                              // E3 = A                  [2]
        lit16     656                            // D = 0x290               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        multe     2                              // D *= E2                 [3]
        srac      24                             // D >>= 24                [4]
        dte       2                              // E2 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        sube      2                              // D -= E2                 [3]
        dte       2                              // E2 = D                  [2]
        lit16     648                            // D = 0x288               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        multe     1                              // D *= E1                 [3]
        srac      24                             // D >>= 24                [4]
        eta       3                              // A = E3                  [2]
        add                                      // D += *A                 [2]
        multe     2                              // D *= E2                 [3]
        srac      24                             // D >>= 24                [4]
        eta       3                              // A = E3                  [2]
        wrd                                      // *A = D                  [2]
        eta       7                              // A = E7                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       7                              // E7 = A                  [2]
        etd       6                              // D = E6                  [2]
        xore      7                              // D ^= E7                 [3]
        bdz       %tn%36                         //                         [4]
        jl        %"block%90"                    //                         [6]
%tn%36:
        jmp       %"block%127"                   //                         [4]
%"block%110":                                    // block                   (3303)
        etd       2                              // D = E2                  [2]
        td1       0, %"block%112"                // if LSB is set           [5]
        jmp       %"block%127"                   //                         [4]
%"block%112":                                    // block                   (3314)
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     15                             // A = D + E15             [3]
        lde       1                              // E1 = *A                 [3]
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     4                              // A = D + E4              [3]
        ate       2                              // E2 = A                  [2]
        lit16     656                            // D = 0x290               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        multe     1                              // D *= E1                 [3]
        srac      24                             // D >>= 24                [4]
        dte       1                              // E1 = D                  [2]
        eta       2                              // A = E2                  [2]
        lde       3                              // E3 = *A                 [3]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        sube      1                              // D -= E1                 [3]
        multe     3                              // D *= E3                 [3]
        srac      24                             // D >>= 24                [4]
        eta       2                              // A = E2                  [2]
        wrd                                      // *A = D                  [2]
        eta       7                              // A = E7                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       7                              // E7 = A                  [2]
        etd       6                              // D = E6                  [2]
        xore      7                              // D ^= E7                 [3]
        bdz       %"block%127"                   //                         [4]
        jmp       %"block%112"                   //                         [4]
%"block%127":                                    // block                   (3424)
        ldg       @total_evaluated_sample_count  // D = @total_evaluated_sample_count[24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        eta       1                              // A = E1                  [2]
        addm                                     // s=*A+D; *A=s; D=s       [2]
        dte       1                              // E1 = D                  [2]
        ldg       @cluster_samples               // D = @cluster_samples    [24]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        etd       3                              // D = E3                  [2]
        cmpe      1                              // D ?= E1                 [3]
        td0       39, %"block%265"               // E sge D                 [5]
        jl        %"block%49"                    //                         [6]
%"block%265":                                    // block                   (3524)
        lit16     560                            // D = 0x230               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     568                            // D = 0x238               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       13                             // E13 = *A                [3] **** spill related
        lit16     576                            // D = 0x240               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       14                             // E14 = *A                [3] **** spill related
        lit16     584                            // D = 0x248               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       15                             // E15 = *A                [3] **** spill related
%tn%0:                                           // block                   (3572)
        eta       0                              // A = newFP               [2]
        lde       0                              // E0 = oldFP              [3]
        ate       11                             // E11 = newFP             [2]
        ldr       @_frame_buckets_+16            // D = bucket              [24]
        dtd2                                     // D2 = FP                 [2]
        dta                                      // A = D                   [2]
%tn%37:
        ld                                       // D = *bucket             [1]
        bdgtz     %tn%38                         // bucket valid?           [4]
        bdz       %tn%38                         // bucket empty?           [4]
        jmp       %tn%37                         // bucket locked           [4]
%tn%38:
        eta       11                             // A = newFP               [2]
        std                                      // *fp = free list         [2]
        swapd                                    //                         [2]
        dta                                      // A = D                   [2]
        swapd                                    //                         [2]
        cas       11                             // bucket changed?         [3]
        bnz       %tn%37                         // if bucket changed, try again[4]
        jmpe      1                              // return                  [3]
        .function_end                            // function size           (3640)
        .extern   @malloc
        .extern   @free
        .extern   @_frame_buckets_
        .extern   @_reg_save_area_
        .extern   @_malloc_arenas_
        .extern   @n_malloc_arenas
        .extern   @__errno
        .extern   @__memcpy
        .extern   @__memset
        .end
