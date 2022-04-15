        .global   @eta
        .replicated
        .align    3
@eta:
        .long     0
        .global   @beta
        .align    3
@beta:
        .long     0
        .global   @using_clusters
        .align    3
@using_clusters:
        .long     0
        .global   @epochs
        .align    3
@epochs:
        .long     0
        .global   @gamma
        .align    3
@gamma:
        .long     0
        .global   @cluster_count
        .align    3
@cluster_count:
        .long     0
        .extern   @model_vec
        .extern   @accuracies
        .data
@.str:
        .byte     37
        .byte     108
        .byte     100
        .byte     44
        .byte     37
        .byte     108
        .byte     100
        .byte     44
        .byte     37
        .byte     108
        .byte     102
        .byte     44
        .byte     37
        .byte     108
        .byte     102
        .byte     10
        .byte     0
        .global   @test_id
        .replicated
        .align    3
@test_id:
        .long     0
        .global   @clock_rate
        .align    3
@clock_rate:
        .long     0
        .extern   @stdout
        .data
@.str.1:
        .byte     45
        .byte     45
        .byte     45
        .byte     32
        .byte     83
        .byte     116
        .byte     97
        .byte     114
        .byte     116
        .byte     105
        .byte     110
        .byte     103
        .byte     32
        .byte     45
        .byte     45
        .byte     45
        .byte     10
        .byte     0
        .global   @threads_per_cluster
        .replicated
        .align    3
@threads_per_cluster:
        .long     0
        .extern   @gradients
        .data
@.str.2:
        .byte     45
        .byte     45
        .byte     45
        .byte     32
        .byte     68
        .byte     111
        .byte     110
        .byte     101
        .byte     32
        .byte     45
        .byte     45
        .byte     45
        .byte     10
        .byte     0
@.str.3:
        .byte     37
        .byte     108
        .byte     100
        .byte     44
        .byte     37
        .byte     108
        .byte     100
        .byte     44
        .byte     37
        .byte     108
        .byte     102
        .byte     10
        .byte     0
        .extern   @model_vec_stripped
        .extern   @node_count
@.str.4:
        .byte     65
        .byte     99
        .byte     99
        .byte     117
        .byte     114
        .byte     97
        .byte     99
        .byte     121
        .byte     58
        .byte     32
        .byte     37
        .byte     108
        .byte     102
        .byte     10
        .byte     0
        .weak   @test_features
        .align    3
@test_features:
        .long     0
        .global   @main
        .text
@main:
        .function_begin                          // entry                   (0)
        ldr       @_frame_buckets_+16            // D = &bucket             [24]
        dta                                      // A = &bucket             [2]
        ata2                                     // A2 = &bucket            [2]
%tn%6:
        lsr       3                              // D = -1                  [3]
        swap                                     // lock bucket & put cur bucket value in D[2]
        bdgtz     %tn%7                          // won lock, jump to that  [4]
        jmp       %tn%8                          // didn't win lock, jump to that[4]
%tn%7:
        dta                                      // A = new FP              [2]
        etd       0                              // D = caller's FP         [2]
        ate       0                              // E0 = new FP             [2]
        swap                                     // Mem[A] = caller FP; D = next FP[2]
        swapa                                    // A=&bucket, A2 = new FP  [2]
        wrd                                      // *A = next FP (unlocks bucket)[2]
        swapa                                    // A = new FP, A2 = &bucket[2]
        jl        %tn%5                          // jump to done            [6]
%tn%8:
        bdz       %tn%4                          // bucket was empty, have to malloc a frame[4]
        jmp       %tn%6                          // *bucket was negative, retry frame cache[4]
%tn%4:
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
%tn%9:
        lit       8                              // D = 8                   [4]
        addms                                    // *A += D; D = *A         [2]
        bdz       %tn%11                         // branch if unlocked      [4]
        muma1     6                              //  D &= 0x7F              [4]
%tn%10:
        aaim      0                              // A += 0 (busy no-op)     [3]
        bnzd      %tn%10                         // branch if D != 0        [4]
        jmp       %tn%9                          // retry lock              [4]
%tn%11:
        swapd                                    //                         [2]
        dte       0                              // E0 = old FP             [2]
        aaim      1                              // A += 8                  [3]
        mts       0x1,0x1                        // set tcb.WO              [6]
        ste       1                              // *A = E1                 [3]
        aaim      1                              // A += 8                  [3]
        ste       2                              // *A = E2                 [3]
        aaim      1                              // A += 8                  [3]
        ste       3                              // *A = E3                 [3]
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
        dta                                      // A = &reg save area      [2]
        lsr       0                              // D = 0x0                 [3]
        std                                      // unlock reg save area    [2]
%tn%5:
                                                 // end of prologue         (334)
        lit16     616                            // D = 0x268               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     608                            // D = 0x260               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       14                             // D = E14                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     600                            // D = 0x258               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       13                             // D = E13                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      5                              // A += 40                 [3]
        ate       13                             // E13 = A                 [2]
        eta       13                             // A = E13                 [2]
        lsr       0                              // D = 0x0                 [3]
        stdia                                    // thread_count = 0        [2]
        std                                      // continuation_valid = 0  [2]
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       0                              // D = E0                  [2]
        addl      576                            // D += 576                [6]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       0                              // D = E0                  [2]
        addl      584                            // D += 584                [6]
        wrd                                      // *A = D                  [2] **** spill related
        ldc       @parse_args                    // D = @parse_args         [15]
        jale      1                              // E2 = call @parse_args   [3]
        ldc       @init                          // D = @init               [15]
        jale      1                              // E2 = call @init         [3]
        ldg       @using_clusters                // D = @using_clusters     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%8"                     //                         [4]
        jl        %"block%89"                    //                         [6]
%"block%8":                                      // block                   (513)
        ldg       @beta                          // D = @beta               [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     640                            // D = 0x280               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @eta                           // D = @eta                [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     648                            // D = 0x288               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%12                         // A = *A                  [4] **** spill related
%tn%12:
        lsr       7                              // D = clock()             [3]
        wrd                                      // *A = D                  [2]
        ldg       @epochs                        // D = @epochs             [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%14"                    //                         [4]
        jl        %"block%15"                    //                         [6]
%"block%14":                                     // block                   (652)
        lsr       1                              // D = 0x1                 [3]
        dte       14                             // E14 = D                 [2]
%"block%22":                                     // block                   (657)
        lsr       1                              // D = 0x1                 [3]
        cmpe      14                             // D ?= E14                [3]
        td1       42, %"block%27"                // E ugt D                 [5]
        jmp       %"block%33"                    //                         [4]
%"block%27":                                     // block                   (672)
        ldg       @gamma                         // D = @gamma              [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     648                            // D = 0x288               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lit16     648                            // D = 0x288               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        multe     2                              // D *= E2                 [3]
        srac      24                             // D >>= 24                [4]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     640                            // D = 0x280               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lit16     640                            // D = 0x280               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        multe     2                              // D *= E2                 [3]
        srac      24                             // D >>= 24                [4]
        wrd                                      // *A = D                  [2] **** spill related
%"block%33":                                     // block                   (765)
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%38"                    //                         [4]
        jl        %._crit_edge25                 //                         [6]
%"block%38":                                     // block                   (802)
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
%"block%44":                                     // block                   (807)
        eta       2                              // A = E2                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        lit16     648                            // D = 0x288               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       3                              // E3 = *A                 [3] **** spill related
        lit16     640                            // D = 0x280               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        baz       %tn%13                         // skip migrate if !A      [4]
        ld8a                                     // migrate                 [3]
%tn%13:
        ldspawn   %tn%14, 0xf01f                 // D = spawn info          [18]
        spc       %tn%15, 1                      // attempt spawn           [4]
        jl        %tn%16                         // continue                [6]
%tn%15:
        ldc       @main.outline_.otd1            // D = @main.outline_.otd1 [15]
        jale      1                              // call @main.outline_.otd1[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        addm                                     // threadCount -= 1        [2]
        jmp       %tn%16                         // continue                [4]
%tn%14:
        ldc       @main.outline_.otd1            // D = @main.outline_.otd1 [15]
        jale      1                              // call @main.outline_.otd1[3]
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
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      15                             // D ?= E15                [3]
        td0       39, %"block%39"                // E sge D                 [5]
%._crit_edge27:                                  // block                   (1055)
        ete       15, 2                          // E2 = E15                [4]
        jl        %"block%44"                    //                         [6]
%._crit_edge25:                                  // block                   (1065)
        lsr       0                              // D = 0x0                 [3]
        dte       15                             // E15 = D                 [2]
%"block%39":                                     // block                   (1070)
        eta       13                             // A = E13                 [2]
        etd       15                             // D = E15                 [2]
        addm                                     // *threadCount += D       [2]
        bdnz      %tn%22                         // kids not done?          [4]
        jmp       %tn%21                         // kids are done           [4]
%tn%22:
        aaim      2                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D == &continuation[0][2]
        jmp       %tn%23                         // skip next inst          [4]
%tn%24:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // A = D                   [2]
%tn%23:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%24                         // Adjust A if D != 0      [4]
        lsr       1                              // D = 0x1                 [3]
        sts                                      // save threadlet state    [2]
        swapd                                    // D = &continuation[0], D2=1[2]
        dta                                      // A = D                   [2]
        swapd                                    // D = 1 (from inst before sts)[2]
        bdz       %tn%21                         // skip if kid             [4]
        aaim      -1                             // A = &continuationValid  [3]
        std                                      // continuationValid = D   [2]
        release   0                              // parent quits            [3]
%tn%21:
        fence                                    // Make sure all ACKs have returned[2]
        eta       14                             // A = E14                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       1                              // E1 = A                  [2]
        ldg       @epochs                        // D = @epochs             [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      14                             // D ?= E14                [3]
        td0       39, %"block%15"                // E sge D                 [5]
%._crit_edge26:                                  // block                   (1175)
        ete       1, 14                          // E14 = E1                [4]
        jl        %"block%22"                    //                         [6]
%"block%15":                                     // block                   (1185)
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%25                         // A = *A                  [4] **** spill related
%tn%25:
        lde       1                              // E1 = *A                 [3]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%26                         // A = *A                  [4] **** spill related
%tn%26:
        lsr       7                              // D = clock()             [3]
        sube      1                              // D -= E1                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%21"                    //                         [4]
        jl        %._crit_edge23                 //                         [6]
%"block%21":                                     // block                   (1259)
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
%"block%59":                                     // block                   (1264)
        eta       2                              // A = E2                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       14                             // E14 = A                 [2]
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        baz       %tn%27                         // skip migrate if !A      [4]
        ld8a                                     // migrate                 [3]
%tn%27:
        ldspawn   %tn%28, 0xf007                 // D = spawn info          [18]
        spc       %tn%29, 1                      // attempt spawn           [4]
        jl        %tn%30                         // continue                [6]
%tn%29:
        ldc       @main.outline_.otd1.5          // D = @main.outline_.otd1.5[15]
        jale      1                              // call @main.outline_.otd1.5[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        addm                                     // threadCount -= 1        [2]
        jmp       %tn%30                         // continue                [4]
%tn%28:
        ldc       @main.outline_.otd1.5          // D = @main.outline_.otd1.5[15]
        jale      1                              // call @main.outline_.otd1.5[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        resize    0x30000                        // only keep A & D         [7]
        addm                                     // threadCount -= 1        [2]
        bz        %tn%31                         // branch if last thread   [4]
        release   0                              // quit                    [3]
%tn%31:
        aaim      1                              // A = &continuationValid  [3]
%tn%32:
        ld                                       // D = continuationValid   [1]
        bdz       %tn%32                         // not ready yet           [4]
        aaim      1                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D                  [2]
        jmp       %tn%33                         // jmp over next           [4]
%tn%34:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // D = A                   [2]
%tn%33:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%34                         // D != 0, adjust A        [4]
        lsr       0                              // D = 0x0                 [3]
        rts                                      // resume continuation     [2]
        swapd                                    // D = &continuation[0]    [2]
        dta                                      // A = &continuation[0]    [2]
        swapd                                    // D = 0                   [2]
%tn%30:
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      14                             // D ?= E14                [3]
        td0       39, %"block%51"                // E sge D                 [5]
%._crit_edge29:                                  // block                   (1488)
        ete       14, 2                          // E2 = E14                [4]
        jl        %"block%59"                    //                         [6]
%._crit_edge23:                                  // block                   (1498)
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
%"block%51":                                     // block                   (1503)
        eta       13                             // A = E13                 [2]
        etd       14                             // D = E14                 [2]
        addm                                     // *threadCount += D       [2]
        bdnz      %tn%36                         // kids not done?          [4]
        jmp       %tn%35                         // kids are done           [4]
%tn%36:
        aaim      2                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D == &continuation[0][2]
        jmp       %tn%37                         // skip next inst          [4]
%tn%38:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // A = D                   [2]
%tn%37:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%38                         // Adjust A if D != 0      [4]
        lsr       1                              // D = 0x1                 [3]
        sts                                      // save threadlet state    [2]
        swapd                                    // D = &continuation[0], D2=1[2]
        dta                                      // A = D                   [2]
        swapd                                    // D = 1 (from inst before sts)[2]
        bdz       %tn%35                         // skip if kid             [4]
        aaim      -1                             // A = &continuationValid  [3]
        std                                      // continuationValid = D   [2]
        release   0                              // parent quits            [3]
%tn%35:
        fence                                    // Make sure all ACKs have returned[2]
        ldg       @accuracies                    // D = @accuracies         [24]
        dta                                      // A = D                   [2]
        bita      %tn%39                         // A = *A                  [4]
%tn%39:
        lde       1                              // E1 = *A                 [3]
        eta       1                              // A = E1                  [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        lsr       1                              // D = 0x1                 [3]
        cmpe      3                              // D ?= E3                 [3]
        td1       38, %"block%58"                // E sgt D                 [5]
%._crit_edge28:                                  // block                   (1644)
        ete       2, 5                           // E5 = E2                 [4]
        jmp       %"block%66"                    //                         [4]
%"block%58":                                     // block                   (1652)
        lsr       1                              // D = 0x1                 [3]
        dte       4                              // E4 = D                  [2]
%"block%80":                                     // block                   (1657)
        etd       4                              // D = E4                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        lde       5                              // E5 = *A                 [3]
        etd       2                              // D = E2                  [2]
        cmpe      5                              // D ?= E5                 [3]
        td1       38, %tn%2                      // E sgt D                 [5]
%tn%1:                                           // block                   (1679)
        ete       2, 5                           // E5 = E2                 [4]
%tn%2:                                           // block                   (1683)
        eta       4                              // A = E4                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       4                              // E4 = A                  [2]
        etd       3                              // D = E3                  [2]
        xore      4                              // D ^= E4                 [3]
        bdz       %"block%66"                    //                         [4]
%._crit_edge30:                                  // block                   (1699)
        ete       5, 2                           // E2 = E5                 [4]
        jmp       %"block%80"                    //                         [4]
%"block%66":                                     // block                   (1707)
        ldg       @epochs                        // D = @epochs             [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        ldg       @clock_rate                    // D = @clock_rate         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        inttofp   1                              // D = double(D)           [3]
        dte       3                              // E3 = D                  [2]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%40                         // A = *A                  [4] **** spill related
%tn%40:
        ld                                       // D = *A                  [1]
        td1       63, %tn%41                     // branch if top bit is 1  [5]
        inttofp   1                              // D = double(D)           [3]
        jmp       %tn%43                         //                         [4]
%tn%41:
        td0       0, %tn%42                      // branch if bit 0 is 0    [5]
        td1       1, %tn%42                      // branch if bit 1 is 1    [5]
        mumo1     1                              // D |= 3                  [4]
%tn%42:
        srlc      1                              // D >>= 1                 [4]
        inttofp   1                              // D = double(D)           [3]
        dte       2                              // E2 = D                  [2]
        fpadde    2                              // D += E2                 [4]
%tn%43:
        fpdive    3                              // D /= E3                 [4]
        dte       3                              // E3 = D                  [2]
        ldg       @.str                          // D = @.str               [24]
        dte       2                              // E2 = D                  [2]
        ldg       @test_id                       // D = @test_id            [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        etd       1                              // D = E1                  [2]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        etd       3                              // D = E3                  [2]
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        etd       5                              // D = E5                  [2]
        inttofp   1                              // D = double(D)           [3]
        dte       1                              // E1 = D                  [2]
        lit16     999                            // D = 0x3E7               [6]
        sllc      52                             // D = 0x3E70000000000000  [4]
        fpmule    1                              // D *= E1                 [4]
        eta       0                              // A = E0                  [2]
        aaim      4                              // A += 32                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        ldg       @stdout                        // D = @stdout             [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
        jl        %"block%141"                   //                         [6]
%"block%89":                                     // block                   (2009)
        ldg       @.str.1                        // D = @.str.1             [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        ldg       @stdout                        // D = @stdout             [24]
        dta                                      // A = D                   [2]
        lde       15                             // E15 = *A                [3]
        ete       15, 2                          // E2 = E15                [4]
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%44                         // A = *A                  [4] **** spill related
%tn%44:
        lsr       7                              // D = clock()             [3]
        wrd                                      // *A = D                  [2]
        ldg       @threads_per_cluster           // D = @threads_per_cluster[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%96"                    //                         [4]
%._crit_edge31:                                  // block                   (2153)
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
        jl        %"block%97"                    //                         [6]
%"block%96":                                     // block                   (2164)
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
%"block%117":                                    // block                   (2169)
        eta       2                              // A = E2                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       14                             // E14 = A                 [2]
        ldg       @gradients                     // D = @gradients          [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        baz       %tn%45                         // skip migrate if !A      [4]
        ld8a                                     // migrate                 [3]
%tn%45:
        ldspawn   %tn%46, 0xf007                 // D = spawn info          [18]
        spc       %tn%47, 1                      // attempt spawn           [4]
        jl        %tn%48                         // continue                [6]
%tn%47:
        ldc       @main.outline_.otd1.7          // D = @main.outline_.otd1.7[15]
        jale      1                              // call @main.outline_.otd1.7[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        addm                                     // threadCount -= 1        [2]
        jmp       %tn%48                         // continue                [4]
%tn%46:
        ldc       @main.outline_.otd1.7          // D = @main.outline_.otd1.7[15]
        jale      1                              // call @main.outline_.otd1.7[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        resize    0x30000                        // only keep A & D         [7]
        addm                                     // threadCount -= 1        [2]
        bz        %tn%49                         // branch if last thread   [4]
        release   0                              // quit                    [3]
%tn%49:
        aaim      1                              // A = &continuationValid  [3]
%tn%50:
        ld                                       // D = continuationValid   [1]
        bdz       %tn%50                         // not ready yet           [4]
        aaim      1                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D                  [2]
        jmp       %tn%51                         // jmp over next           [4]
%tn%52:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // D = A                   [2]
%tn%51:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%52                         // D != 0, adjust A        [4]
        lsr       0                              // D = 0x0                 [3]
        rts                                      // resume continuation     [2]
        swapd                                    // D = &continuation[0]    [2]
        dta                                      // A = &continuation[0]    [2]
        swapd                                    // D = 0                   [2]
%tn%48:
        ldg       @threads_per_cluster           // D = @threads_per_cluster[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      14                             // D ?= E14                [3]
        td0       39, %"block%97"                // E sge D                 [5]
%._crit_edge33:                                  // block                   (2393)
        ete       14, 2                          // E2 = E14                [4]
        jl        %"block%117"                   //                         [6]
%"block%97":                                     // block                   (2403)
        eta       13                             // A = E13                 [2]
        etd       14                             // D = E14                 [2]
        addm                                     // *threadCount += D       [2]
        bdnz      %tn%54                         // kids not done?          [4]
        jmp       %tn%53                         // kids are done           [4]
%tn%54:
        aaim      2                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D == &continuation[0][2]
        jmp       %tn%55                         // skip next inst          [4]
%tn%56:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // A = D                   [2]
%tn%55:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%56                         // Adjust A if D != 0      [4]
        lsr       1                              // D = 0x1                 [3]
        sts                                      // save threadlet state    [2]
        swapd                                    // D = &continuation[0], D2=1[2]
        dta                                      // A = D                   [2]
        swapd                                    // D = 1 (from inst before sts)[2]
        bdz       %tn%53                         // skip if kid             [4]
        aaim      -1                             // A = &continuationValid  [3]
        std                                      // continuationValid = D   [2]
        release   0                              // parent quits            [3]
%tn%53:
        fence                                    // Make sure all ACKs have returned[2]
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%57                         // A = *A                  [4] **** spill related
%tn%57:
        lde       1                              // E1 = *A                 [3]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%58                         // A = *A                  [4] **** spill related
%tn%58:
        lsr       7                              // D = clock()             [3]
        sube      1                              // D -= E1                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @.str.2                        // D = @.str.2             [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        ete       15, 2                          // E2 = E15                [4]
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ldg       @epochs                        // D = @epochs             [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        ldg       @clock_rate                    // D = @clock_rate         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        inttofp   1                              // D = double(D)           [3]
        dte       3                              // E3 = D                  [2]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%59                         // A = *A                  [4] **** spill related
%tn%59:
        ld                                       // D = *A                  [1]
        td1       63, %tn%60                     // branch if top bit is 1  [5]
        inttofp   1                              // D = double(D)           [3]
        jmp       %tn%62                         //                         [4]
%tn%60:
        td0       0, %tn%61                      // branch if bit 0 is 0    [5]
        td1       1, %tn%61                      // branch if bit 1 is 1    [5]
        mumo1     1                              // D |= 3                  [4]
%tn%61:
        srlc      1                              // D >>= 1                 [4]
        inttofp   1                              // D = double(D)           [3]
        dte       2                              // E2 = D                  [2]
        fpadde    2                              // D += E2                 [4]
%tn%62:
        fpdive    3                              // D /= E3                 [4]
        dte       3                              // E3 = D                  [2]
        ldg       @.str.3                        // D = @.str.3             [24]
        dte       2                              // E2 = D                  [2]
        ldg       @test_id                       // D = @test_id            [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        etd       1                              // D = E1                  [2]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        etd       3                              // D = E3                  [2]
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        ete       15, 2                          // E2 = E15                [4]
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ldg       @model_vec_stripped            // D = @model_vec_stripped [24]
        dta                                      // A = D                   [2]
        bita      %tn%63                         // A = *A                  [4]
%tn%63:
        ld8a                                     // migrate(*A)             [3]
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%116"                   //                         [4]
%._crit_edge32:                                  // block                   (2871)
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
        jl        %"block%124"                   //                         [6]
%"block%116":                                    // block                   (2882)
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
%"block%134":                                    // block                   (2887)
        eta       2                              // A = E2                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       14                             // E14 = A                 [2]
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        baz       %tn%64                         // skip migrate if !A      [4]
        ld8a                                     // migrate                 [3]
%tn%64:
        ldspawn   %tn%65, 0xf007                 // D = spawn info          [18]
        spc       %tn%66, 1                      // attempt spawn           [4]
        jl        %tn%67                         // continue                [6]
%tn%66:
        ldc       @main.outline_.otd1.6          // D = @main.outline_.otd1.6[15]
        jale      1                              // call @main.outline_.otd1.6[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        addm                                     // threadCount -= 1        [2]
        jmp       %tn%67                         // continue                [4]
%tn%65:
        ldc       @main.outline_.otd1.6          // D = @main.outline_.otd1.6[15]
        jale      1                              // call @main.outline_.otd1.6[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        resize    0x30000                        // only keep A & D         [7]
        addm                                     // threadCount -= 1        [2]
        bz        %tn%68                         // branch if last thread   [4]
        release   0                              // quit                    [3]
%tn%68:
        aaim      1                              // A = &continuationValid  [3]
%tn%69:
        ld                                       // D = continuationValid   [1]
        bdz       %tn%69                         // not ready yet           [4]
        aaim      1                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D                  [2]
        jmp       %tn%70                         // jmp over next           [4]
%tn%71:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // D = A                   [2]
%tn%70:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%71                         // D != 0, adjust A        [4]
        lsr       0                              // D = 0x0                 [3]
        rts                                      // resume continuation     [2]
        swapd                                    // D = &continuation[0]    [2]
        dta                                      // A = &continuation[0]    [2]
        swapd                                    // D = 0                   [2]
%tn%67:
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      14                             // D ?= E14                [3]
        td0       39, %"block%124"               // E sge D                 [5]
%._crit_edge34:                                  // block                   (3111)
        ete       14, 2                          // E2 = E14                [4]
        jl        %"block%134"                   //                         [6]
%"block%124":                                    // block                   (3121)
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @get_accuracy                  // D = @get_accuracy       [15]
        jale      1                              // call @get_accuracy      [3]
        ldg       @model_vec_stripped            // D = @model_vec_stripped [24]
        dta                                      // A = D                   [2]
        bita      %tn%72                         // A = *A                  [4]
%tn%72:
        ld8a                                     // migrate(*A)             [3]
        ldg       @.str.4                        // D = @.str.4             [24]
        dte       2                              // E2 = D                  [2]
        ldg       @accuracies                    // D = @accuracies         [24]
        dta                                      // A = D                   [2]
        bita      %tn%73                         // A = *A                  [4]
%tn%73:
        bita      %tn%74                         // A = *A                  [4]
%tn%74:
        ld                                       // D = *A                  [1]
        inttofp   1                              // D = double(D)           [3]
        dte       1                              // E1 = D                  [2]
        lit16     999                            // D = 0x3E7               [6]
        sllc      52                             // D = 0x3E70000000000000  [4]
        fpmule    1                              // D *= E1                 [4]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        ete       15, 2                          // E2 = E15                [4]
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
%"block%141":                                    // block                   (3304)
        eta       13                             // A = E13                 [2]
        etd       14                             // D = E14                 [2]
        addm                                     // *threadCount += D       [2]
        bdnz      %tn%76                         // kids not done?          [4]
        jmp       %tn%75                         // kids are done           [4]
%tn%76:
        aaim      2                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D == &continuation[0][2]
        jmp       %tn%77                         // skip next inst          [4]
%tn%78:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // A = D                   [2]
%tn%77:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%78                         // Adjust A if D != 0      [4]
        lsr       1                              // D = 0x1                 [3]
        sts                                      // save threadlet state    [2]
        swapd                                    // D = &continuation[0], D2=1[2]
        dta                                      // A = D                   [2]
        swapd                                    // D = 1 (from inst before sts)[2]
        bdz       %tn%75                         // skip if kid             [4]
        aaim      -1                             // A = &continuationValid  [3]
        std                                      // continuationValid = D   [2]
        release   0                              // parent quits            [3]
%tn%75:
        fence                                    // Make sure all ACKs have returned[2]
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     600                            // D = 0x258               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       13                             // E13 = *A                [3] **** spill related
        lit16     608                            // D = 0x260               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       14                             // E14 = *A                [3] **** spill related
        lit16     616                            // D = 0x268               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       15                             // E15 = *A                [3] **** spill related
%tn%3:                                           // block                   (3420)
        eta       0                              // A = newFP               [2]
        lde       0                              // E0 = oldFP              [3]
        ate       11                             // E11 = newFP             [2]
        ldr       @_frame_buckets_+16            // D = bucket              [24]
        dtd2                                     // D2 = bucket             [2]
        dta                                      // A = bucket              [2]
%tn%79:
        ld                                       // D = *bucket             [1]
        bdgtz     %tn%80                         // bucket valid?           [4]
        bdz       %tn%80                         // bucket empty?           [4]
        jmp       %tn%79                         // bucket locked           [4]
%tn%80:
        eta       11                             // A = newFP               [2]
        std                                      // *fp = free list         [2]
        swapd                                    //                         [2]
        dta                                      // A = bucket              [2]
        swapd                                    //                         [2]
        cas       11                             // bucket changed?         [3]
        bnz       %tn%79                         // if bucket changed, try again[4]
        jmpe      1                              // return                  [3]
        .function_end                            // function size           (3488)
        .extern   @parse_args
        .extern   @init
        .extern   @_Cilk_migrate_hint
        .extern   @train_spawn
        .extern   @get_accuracy
        .extern   @printf
        .extern   @fflush
        .extern   @featured_partitioned_train
        .extern   @reduce_models
        .text
@main.outline_.otd1:
        .function_begin                          // entry                   (0)
        ldr       @_frame_buckets_+0             // D = &bucket             [24]
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
        lit       64                             // D = 0x40                [4]
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
                                                 // end of prologue         (332)
        etd       15                             // D = E15                 [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      1                              // A += 8                  [3] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        ete       1, 15                          // E15 = E1                [4]
        ldc       @train_spawn                   // D = @train_spawn        [15]
        jale      1                              // call @train_spawn       [3]
        ete       15, 1                          // E1 = E15                [4]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      1                              // A += 8                  [3] **** spill related
        lde       15                             // E15 = *A                [3] **** spill related
%tn%0:                                           // block                   (375)
        eta       0                              // A = newFP               [2]
        lde       0                              // E0 = oldFP              [3]
        ate       11                             // E11 = newFP             [2]
        ldr       @_frame_buckets_+0             // D = bucket              [24]
        dtd2                                     // D2 = FP                 [2]
        dta                                      // A = D                   [2]
%tn%9:
        ld                                       // D = *bucket             [1]
        bdgtz     %tn%10                         // bucket valid?           [4]
        bdz       %tn%10                         // bucket empty?           [4]
        jmp       %tn%9                          // bucket locked           [4]
%tn%10:
        eta       11                             // A = newFP               [2]
        std                                      // *fp = free list         [2]
        swapd                                    //                         [2]
        dta                                      // A = D                   [2]
        swapd                                    //                         [2]
        cas       11                             // bucket changed?         [3]
        bnz       %tn%9                          // if bucket changed, try again[4]
        jmpe      1                              // return                  [3]
        .function_end                            // function size           (443)
        .text
@main.outline_.otd1.5:
        .function_begin                          // entry                   (0)
        ldr       @_frame_buckets_+0             // D = &bucket             [24]
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
        lit       64                             // D = 0x40                [4]
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
                                                 // end of prologue         (332)
        etd       15                             // D = E15                 [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      1                              // A += 8                  [3] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        ete       1, 15                          // E15 = E1                [4]
        ldc       @get_accuracy                  // D = @get_accuracy       [15]
        jale      1                              // call @get_accuracy      [3]
        ete       15, 1                          // E1 = E15                [4]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      1                              // A += 8                  [3] **** spill related
        lde       15                             // E15 = *A                [3] **** spill related
%tn%0:                                           // block                   (375)
        eta       0                              // A = newFP               [2]
        lde       0                              // E0 = oldFP              [3]
        ate       11                             // E11 = newFP             [2]
        ldr       @_frame_buckets_+0             // D = bucket              [24]
        dtd2                                     // D2 = FP                 [2]
        dta                                      // A = D                   [2]
%tn%9:
        ld                                       // D = *bucket             [1]
        bdgtz     %tn%10                         // bucket valid?           [4]
        bdz       %tn%10                         // bucket empty?           [4]
        jmp       %tn%9                          // bucket locked           [4]
%tn%10:
        eta       11                             // A = newFP               [2]
        std                                      // *fp = free list         [2]
        swapd                                    //                         [2]
        dta                                      // A = D                   [2]
        swapd                                    //                         [2]
        cas       11                             // bucket changed?         [3]
        bnz       %tn%9                          // if bucket changed, try again[4]
        jmpe      1                              // return                  [3]
        .function_end                            // function size           (443)
        .text
@main.outline_.otd1.6:
        .function_begin                          // entry                   (0)
        ldr       @_frame_buckets_+0             // D = &bucket             [24]
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
        lit       64                             // D = 0x40                [4]
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
                                                 // end of prologue         (332)
        etd       15                             // D = E15                 [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      1                              // A += 8                  [3] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        ete       1, 15                          // E15 = E1                [4]
        ldc       @reduce_models                 // D = @reduce_models      [15]
        jale      1                              // call @reduce_models     [3]
        ete       15, 1                          // E1 = E15                [4]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      1                              // A += 8                  [3] **** spill related
        lde       15                             // E15 = *A                [3] **** spill related
%tn%0:                                           // block                   (375)
        eta       0                              // A = newFP               [2]
        lde       0                              // E0 = oldFP              [3]
        ate       11                             // E11 = newFP             [2]
        ldr       @_frame_buckets_+0             // D = bucket              [24]
        dtd2                                     // D2 = FP                 [2]
        dta                                      // A = D                   [2]
%tn%9:
        ld                                       // D = *bucket             [1]
        bdgtz     %tn%10                         // bucket valid?           [4]
        bdz       %tn%10                         // bucket empty?           [4]
        jmp       %tn%9                          // bucket locked           [4]
%tn%10:
        eta       11                             // A = newFP               [2]
        std                                      // *fp = free list         [2]
        swapd                                    //                         [2]
        dta                                      // A = D                   [2]
        swapd                                    //                         [2]
        cas       11                             // bucket changed?         [3]
        bnz       %tn%9                          // if bucket changed, try again[4]
        jmpe      1                              // return                  [3]
        .function_end                            // function size           (443)
        .text
@main.outline_.otd1.7:
        .function_begin                          // entry                   (0)
        ldr       @_frame_buckets_+0             // D = &bucket             [24]
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
        lit       64                             // D = 0x40                [4]
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
                                                 // end of prologue         (332)
        etd       15                             // D = E15                 [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      1                              // A += 8                  [3] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        ete       1, 15                          // E15 = E1                [4]
        ldc       @featured_partitioned_train    // D = @featured_partitioned_train[15]
        jale      1                              // call @featured_partitioned_train[3]
        ete       15, 1                          // E1 = E15                [4]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      1                              // A += 8                  [3] **** spill related
        lde       15                             // E15 = *A                [3] **** spill related
%tn%0:                                           // block                   (375)
        eta       0                              // A = newFP               [2]
        lde       0                              // E0 = oldFP              [3]
        ate       11                             // E11 = newFP             [2]
        ldr       @_frame_buckets_+0             // D = bucket              [24]
        dtd2                                     // D2 = FP                 [2]
        dta                                      // A = D                   [2]
%tn%9:
        ld                                       // D = *bucket             [1]
        bdgtz     %tn%10                         // bucket valid?           [4]
        bdz       %tn%10                         // bucket empty?           [4]
        jmp       %tn%9                          // bucket locked           [4]
%tn%10:
        eta       11                             // A = newFP               [2]
        std                                      // *fp = free list         [2]
        swapd                                    //                         [2]
        dta                                      // A = D                   [2]
        swapd                                    //                         [2]
        cas       11                             // bucket changed?         [3]
        bnz       %tn%9                          // if bucket changed, try again[4]
        jmpe      1                              // return                  [3]
        .function_end                            // function size           (443)
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
