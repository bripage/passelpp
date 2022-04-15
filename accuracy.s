        .data
@.str:
        .byte     37
        .byte     80
        .byte     111
        .byte     112
        .byte     117
        .byte     108
        .byte     97
        .byte     116
        .byte     105
        .byte     110
        .byte     103
        .byte     32
        .byte     84
        .byte     101
        .byte     115
        .byte     116
        .byte     32
        .byte     68
        .byte     97
        .byte     116
        .byte     97
        .byte     10
        .byte     0
        .extern   @stdout
        .weak   @test_features
        .align    3
@test_features:
        .long     0
        .extern   @test_feature_path
@.str.1:
        .byte     114
        .byte     98
        .byte     0
@.str.2:
        .byte     70
        .byte     97
        .byte     105
        .byte     108
        .byte     101
        .byte     100
        .byte     32
        .byte     116
        .byte     111
        .byte     32
        .byte     111
        .byte     112
        .byte     101
        .byte     110
        .byte     32
        .byte     116
        .byte     101
        .byte     115
        .byte     116
        .byte     32
        .byte     102
        .byte     101
        .byte     97
        .byte     116
        .byte     117
        .byte     114
        .byte     101
        .byte     32
        .byte     102
        .byte     105
        .byte     108
        .byte     101
        .byte     46
        .byte     10
        .byte     0
        .extern   @total_test_points
        .extern   @test_sample_count
@.str.3:
        .byte     99
        .byte     104
        .byte     117
        .byte     110
        .byte     107
        .byte     95
        .byte     99
        .byte     111
        .byte     117
        .byte     110
        .byte     116
        .byte     32
        .byte     61
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     10
        .byte     0
@.str.4:
        .byte     70
        .byte     97
        .byte     105
        .byte     108
        .byte     101
        .byte     100
        .byte     32
        .byte     116
        .byte     111
        .byte     32
        .byte     97
        .byte     108
        .byte     108
        .byte     111
        .byte     99
        .byte     97
        .byte     116
        .byte     101
        .byte     32
        .byte     105
        .byte     110
        .byte     105
        .byte     116
        .byte     105
        .byte     97
        .byte     108
        .byte     32
        .byte     98
        .byte     117
        .byte     102
        .byte     102
        .byte     101
        .byte     114
        .byte     32
        .byte     99
        .byte     104
        .byte     117
        .byte     110
        .byte     107
        .byte     46
        .byte     10
        .byte     0
        .extern   @non_standard_classes
        .extern   @class1
        .extern   @class2
@.str.5:
        .byte     69
        .byte     82
        .byte     82
        .byte     79
        .byte     82
        .byte     58
        .byte     32
        .byte     84
        .byte     114
        .byte     97
        .byte     105
        .byte     110
        .byte     105
        .byte     110
        .byte     103
        .byte     32
        .byte     68
        .byte     97
        .byte     116
        .byte     97
        .byte     32
        .byte     99
        .byte     108
        .byte     97
        .byte     115
        .byte     115
        .byte     101
        .byte     115
        .byte     32
        .byte     100
        .byte     111
        .byte     32
        .byte     110
        .byte     111
        .byte     116
        .byte     32
        .byte     109
        .byte     97
        .byte     116
        .byte     99
        .byte     104
        .byte     32
        .byte     99
        .byte     108
        .byte     97
        .byte     115
        .byte     115
        .byte     32
        .byte     114
        .byte     97
        .byte     110
        .byte     103
        .byte     101
        .byte     10
        .byte     0
        .extern   @test_s_stripped
        .extern   @test_c_stripped
        .extern   @test_f_stripped
        .extern   @test_v_stripped
@.str.6:
        .byte     69
        .byte     114
        .byte     114
        .byte     111
        .byte     114
        .byte     32
        .byte     105
        .byte     110
        .byte     32
        .byte     114
        .byte     101
        .byte     97
        .byte     100
        .byte     105
        .byte     110
        .byte     103
        .byte     32
        .byte     102
        .byte     105
        .byte     110
        .byte     97
        .byte     108
        .byte     32
        .byte     102
        .byte     105
        .byte     108
        .byte     101
        .byte     32
        .byte     99
        .byte     104
        .byte     117
        .byte     110
        .byte     107
        .byte     10
        .byte     0
@.str.7:
        .byte     102
        .byte     105
        .byte     110
        .byte     97
        .byte     108
        .byte     32
        .byte     102
        .byte     105
        .byte     108
        .byte     101
        .byte     32
        .byte     99
        .byte     104
        .byte     117
        .byte     110
        .byte     107
        .byte     32
        .byte     99
        .byte     111
        .byte     112
        .byte     105
        .byte     101
        .byte     100
        .byte     32
        .byte     105
        .byte     110
        .byte     116
        .byte     111
        .byte     32
        .byte     98
        .byte     117
        .byte     102
        .byte     102
        .byte     101
        .byte     114
        .byte     10
        .byte     0
@.str.8:
        .byte     69
        .byte     114
        .byte     114
        .byte     111
        .byte     114
        .byte     32
        .byte     105
        .byte     110
        .byte     32
        .byte     114
        .byte     101
        .byte     97
        .byte     100
        .byte     105
        .byte     110
        .byte     103
        .byte     32
        .byte     102
        .byte     105
        .byte     108
        .byte     101
        .byte     32
        .byte     99
        .byte     104
        .byte     117
        .byte     110
        .byte     107
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     10
        .byte     0
@.str.9:
        .byte     102
        .byte     105
        .byte     108
        .byte     101
        .byte     32
        .byte     99
        .byte     104
        .byte     117
        .byte     110
        .byte     107
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     32
        .byte     111
        .byte     102
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     32
        .byte     99
        .byte     111
        .byte     112
        .byte     105
        .byte     101
        .byte     100
        .byte     32
        .byte     105
        .byte     110
        .byte     116
        .byte     111
        .byte     32
        .byte     98
        .byte     117
        .byte     102
        .byte     102
        .byte     101
        .byte     114
        .byte     10
        .byte     0
@.str.10:
        .byte     42
        .byte     42
        .byte     42
        .byte     32
        .byte     84
        .byte     101
        .byte     115
        .byte     116
        .byte     32
        .byte     70
        .byte     101
        .byte     97
        .byte     116
        .byte     117
        .byte     114
        .byte     101
        .byte     32
        .byte     70
        .byte     105
        .byte     108
        .byte     101
        .byte     32
        .byte     82
        .byte     101
        .byte     97
        .byte     100
        .byte     32
        .byte     70
        .byte     97
        .byte     105
        .byte     108
        .byte     117
        .byte     114
        .byte     101
        .byte     32
        .byte     42
        .byte     42
        .byte     42
        .byte     10
        .byte     0
        .extern   @model_vec
        .extern   @accuracies
@.str.11:
        .byte     69
        .byte     82
        .byte     82
        .byte     79
        .byte     82
        .byte     58
        .byte     32
        .byte     84
        .byte     101
        .byte     115
        .byte     116
        .byte     32
        .byte     68
        .byte     97
        .byte     116
        .byte     97
        .byte     32
        .byte     79
        .byte     117
        .byte     116
        .byte     32
        .byte     79
        .byte     102
        .byte     32
        .byte     66
        .byte     111
        .byte     117
        .byte     110
        .byte     100
        .byte     115
        .byte     33
        .byte     32
        .byte     115
        .byte     97
        .byte     109
        .byte     112
        .byte     108
        .byte     101
        .byte     32
        .byte     61
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     44
        .byte     32
        .byte     115
        .byte     116
        .byte     97
        .byte     114
        .byte     116
        .byte     32
        .byte     61
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     44
        .byte     32
        .byte     115
        .byte     116
        .byte     111
        .byte     112
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     10
        .byte     0
        .extern   @featureSetSize
@.str.12:
        .byte     69
        .byte     82
        .byte     82
        .byte     79
        .byte     82
        .byte     58
        .byte     32
        .byte     84
        .byte     101
        .byte     115
        .byte     116
        .byte     32
        .byte     68
        .byte     97
        .byte     116
        .byte     97
        .byte     32
        .byte     79
        .byte     117
        .byte     116
        .byte     32
        .byte     79
        .byte     102
        .byte     32
        .byte     66
        .byte     111
        .byte     117
        .byte     110
        .byte     100
        .byte     115
        .byte     33
        .byte     32
        .byte     115
        .byte     97
        .byte     109
        .byte     112
        .byte     108
        .byte     101
        .byte     32
        .byte     61
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     44
        .byte     32
        .byte     102
        .byte     101
        .byte     97
        .byte     116
        .byte     117
        .byte     114
        .byte     101
        .byte     32
        .byte     61
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     10
        .byte     0
        .extern   @model_vec_stripped
        .global   @populateTestDataStripped
        .text
@populateTestDataStripped:
        .function_begin                          // entry                   (0)
        ldr       @_frame_buckets_+8             // D = &bucket             [24]
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
        mts       0x1,0                          // clear tcb.WO            [6]
        lit16     256                            // D = 0x100               [6]
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
        dta                                      // A = &reg save area      [2]
        lsr       0                              // D = 0x0                 [3]
        std                                      // unlock reg save area    [2]
%tn%2:
                                                 // end of prologue         (334)
        etd       15                             // D = E15                 [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      7                              // A += 56                 [3] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        etd       14                             // D = E14                 [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      6                              // A += 48                 [3] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      5                              // A += 40                 [3] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        etd       12                             // D = E12                 [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      4                              // A += 32                 [3] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        etd       1                              // D = E1                  [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      3                              // A += 24                 [3] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @.str                          // D = @.str               [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        ldg       @stdout                        // D = @stdout             [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ldg       @test_features                 // D = @test_features      [24]
        dta                                      // A = D                   [2]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @test_feature_path             // D = @test_feature_path  [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.1                        // D = @.str.1             [24]
        dte       3                              // E3 = D                  [2]
        ldc       @fopen                         // D = @fopen              [15]
        jale      1                              // E2 = call @fopen        [3]
        ldg       @test_features                 // D = @test_features      [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2]
        eta       2                              // A = E2                  [2]
        baz       %"block%6"                     //                         [4]
        jmp       %"block%8"                     //                         [4]
%"block%6":                                      // block                   (635)
        ldg       @.str.2                        // D = @.str.2             [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%8":                                      // block                   (702)
        ldg       @test_sample_count             // D = @test_sample_count  [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        ldg       @total_test_points             // D = @total_test_points  [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sube      1                              // D -= E1                 [3]
        dte       12                             // E12 = D                 [2]
        etd       12                             // D = E12                 [2]
        sllc      2                              // D <<= 2                 [4]
        dte       13                             // E13 = D                 [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        cmpe      12                             // D ?= E12                [3]
        td0       38, %"block%155"               // E sle D                 [5]
        jl        %"block%14"                    //                         [6]
%"block%155":                                    // block                   (792)
        etd       12                             // D = E12                 [2]
        sllc      5                              // D <<= 5                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // E2 = call @malloc       [3]
        ete       2, 14                          // E14 = E2                [4]
        ete       14, 2                          // E2 = E14                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        ete       13, 4                          // E4 = E13                [4]
        ldg       @test_features                 // D = @test_features      [24]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        etd       13                             // D = E13                 [2]
        xore      2                              // D ^= E2                 [3]
        bdnz      %"block%161"                   //                         [4]
        jmp       %"block%163"                   //                         [4]
%"block%161":                                    // block                   (896)
        ldg       @.str.10                       // D = @.str.10            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%163":                                    // block                   (963)
        etd       12                             // D = E12                 [2]
        bdgtz     %"block%165"                   //                         [4]
%._crit_edge93:                                  // block                   (969)
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
        lsr       0                              // D = 0x0                 [3]
        dte       12                             // E12 = D                 [2]
        jl        %"block%209"                   //                         [6]
%"block%165":                                    // block                   (985)
        ldg       @test_f_stripped               // D = @test_f_stripped    [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        ldg       @test_v_stripped               // D = @test_v_stripped    [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @test_s_stripped               // D = @test_s_stripped    [24]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        ldg       @test_c_stripped               // D = @test_c_stripped    [24]
        dta                                      // A = D                   [2]
        lde       4                              // E4 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       5                              // E5 = D                  [2]
        lsr       3                              // D = -1                  [3]
        dte       6                              // E6 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        dte       12                             // E12 = D                 [2]
%"block%170":                                    // block                   (1116)
        etd       5                              // D = E5                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     14                             // A = D + E14             [3]
        lde       15                             // E15 = *A                [3]
        etd       5                              // D = E5                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x8                            // D |= 0x8                [6]
        dpeta     14                             // A = D + E14             [3]
        lde       7                              // E7 = *A                 [3]
        etd       5                              // D = E5                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x10                           // D |= 0x10               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       8                              // E8 = *A                 [3]
        etd       5                              // D = E5                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x18                           // D |= 0x18               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       9                              // E9 = *A                 [3]
        ldg       @non_standard_classes          // D = @non_standard_classes[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%187"                   //                         [4]
        jmp       %"block%196"                   //                         [4]
%"block%187":                                    // block                   (1217)
        ldg       @class1                        // D = @class1             [24]
        dta                                      // A = D                   [2]
        etd       9                              // D = E9                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%190"                   //                         [4]
%._crit_edge95:                                  // block                   (1251)
        lsr       3                              // D = -1                  [3]
        dte       9                              // E9 = D                  [2]
        jmp       %"block%196"                   //                         [4]
%"block%190":                                    // block                   (1260)
        ldg       @class2                        // D = @class2             [24]
        dta                                      // A = D                   [2]
        etd       9                              // D = E9                  [2]
        xor                                      // D ^= *A                 [2]
        bdz       %._crit_edge96                 //                         [4]
        jmp       %"block%193"                   //                         [4]
%._crit_edge96:                                  // block                   (1298)
        lsr       1                              // D = 0x1                 [3]
        dte       9                              // E9 = D                  [2]
%"block%196":                                    // block                   (1303)
        etd       6                              // D = E6                  [2]
        xore      15                             // D ^= E15                [3]
        bdnz      %"block%199"                   //                         [4]
        jmp       %"block%202"                   //                         [4]
%"block%199":                                    // block                   (1316)
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     3                              // A = D + E3              [3]
        etd       12                             // D = E12                 [2]
        wrd                                      // *A = D                  [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     4                              // A = D + E4              [3]
        etd       9                              // D = E9                  [2]
        wrd                                      // *A = D                  [2]
        ete       15, 6                          // E6 = E15                [4]
%"block%202":                                    // block                   (1346)
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        etd       7                              // D = E7                  [2]
        wrd                                      // *A = D                  [2]
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        etd       8                              // D = E8                  [2]
        wrd                                      // *A = D                  [2]
        eta       12                             // A = E12                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       12                             // E12 = A                 [2]
        eta       5                              // A = E5                  [2]
        aaimb     4                              // A += 4                  [3]
        ate       5                              // E5 = A                  [2]
        etd       13                             // D = E13                 [2]
        cmpe      5                              // D ?= E5                 [3]
        td1       39, %tn%9                      // E slt D                 [5]
        jl        %"block%209"                   //                         [6]
%tn%9:
        jl        %"block%170"                   //                         [6]
%"block%193":                                    // block                   (1408)
        ldg       @.str.5                        // D = @.str.5             [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit       2                              // D = 0x2                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%14":                                     // block                   (1504)
        etd       12                             // D = E12                 [2]
        srlc      24                             // D >>= 24                [4]
        dte       1                              // E1 = D                  [2]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      26                             // D <<= 26                [4]
        neg                                      // D = -D                  [2]
        adde      13                             // D += E13                [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2] **** spill related
        bdz       %tn%10                         //                         [4]
        lsr       1                              // D = 1                   [3]
%tn%10:
        muma1     0                              // D &= 0x1                [4]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @.str.3                        // D = @.str.3             [24]
        dte       2                              // E2 = D                  [2]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lsr       1                              // D = 0x1                 [3]
        sllc      29                             // D = 0x20000000          [4]
        dte       2                              // E2 = D                  [2]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // E2 = call @malloc       [3]
        ete       2, 14                          // E14 = E2                [4]
        eta       14                             // A = E14                 [2]
        baz       %"block%25"                    //                         [4]
        jmp       %"block%27"                    //                         [4]
%"block%25":                                     // block                   (1695)
        ldg       @.str.4                        // D = @.str.4             [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%27":                                     // block                   (1762)
        ete       14, 2                          // E2 = E14                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      26                             // D = 0x4000000           [4]
        dte       4                              // E4 = D                  [2]
        ldg       @test_features                 // D = @test_features      [24]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        bdnz      %"block%31"                    //                         [4]
        jl        %._crit_edge                   //                         [6]
%"block%31":                                     // block                   (1846)
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       3                              // D = -1                  [3]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%34"                    //                         [4]
        jl        %"block%107"                   //                         [6]
%"block%34":                                     // block                   (1893)
        lsr       0                              // D = 0x0                 [3]
        dte       1                              // E1 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      26                             // D = 0x4000000           [4]
        dte       13                             // E13 = D                 [2]
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       3                              // D = -1                  [3]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       12                             // E12 = D                 [2]
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
%"block%35":                                     // block                   (1929)
        etd       13                             // D = E13                 [2]
        bdgtz     %"block%102"                   //                         [4]
        jl        %"block%42"                    //                         [6]
%"block%102":                                    // block                   (1941)
        ldg       @test_f_stripped               // D = @test_f_stripped    [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @test_v_stripped               // D = @test_v_stripped    [24]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        ldg       @test_s_stripped               // D = @test_s_stripped    [24]
        dta                                      // A = D                   [2]
        lde       4                              // E4 = *A                 [3]
        ldg       @test_c_stripped               // D = @test_c_stripped    [24]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       6                              // E6 = D                  [2]
%"block%66":                                     // block                   (2062)
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     14                             // A = D + E14             [3]
        lde       15                             // E15 = *A                [3]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x8                            // D |= 0x8                [6]
        dpeta     14                             // A = D + E14             [3]
        lde       7                              // E7 = *A                 [3]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x10                           // D |= 0x10               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       8                              // E8 = *A                 [3]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x18                           // D |= 0x18               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       9                              // E9 = *A                 [3]
        ldg       @non_standard_classes          // D = @non_standard_classes[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%83"                    //                         [4]
        jmp       %"block%89"                    //                         [4]
%"block%83":                                     // block                   (2163)
        ldg       @class1                        // D = @class1             [24]
        dta                                      // A = D                   [2]
        etd       9                              // D = E9                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%86"                    //                         [4]
%._crit_edge84:                                  // block                   (2197)
        lsr       3                              // D = -1                  [3]
        dte       9                              // E9 = D                  [2]
        jmp       %"block%89"                    //                         [4]
%"block%86":                                     // block                   (2206)
        ldg       @class2                        // D = @class2             [24]
        dta                                      // A = D                   [2]
        etd       9                              // D = E9                  [2]
        xor                                      // D ^= *A                 [2]
        bdz       %._crit_edge85                 //                         [4]
        jl        %"block%135"                   //                         [6]
%._crit_edge85:                                  // block                   (2246)
        lsr       1                              // D = 0x1                 [3]
        dte       9                              // E9 = D                  [2]
%"block%89":                                     // block                   (2251)
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%92"                    //                         [4]
        jmp       %"block%95"                    //                         [4]
%"block%92":                                     // block                   (2270)
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     4                              // A = D + E4              [3]
        etd       12                             // D = E12                 [2]
        wrd                                      // *A = D                  [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     5                              // A = D + E5              [3]
        etd       9                              // D = E9                  [2]
        wrd                                      // *A = D                  [2]
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        wrd                                      // *A = D                  [2] **** spill related
%"block%95":                                     // block                   (2307)
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        etd       7                              // D = E7                  [2]
        wrd                                      // *A = D                  [2]
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     3                              // A = D + E3              [3]
        etd       8                              // D = E8                  [2]
        wrd                                      // *A = D                  [2]
        eta       12                             // A = E12                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       12                             // E12 = A                 [2]
        eta       6                              // A = E6                  [2]
        aaimb     4                              // A += 4                  [3]
        ate       6                              // E6 = A                  [2]
        etd       13                             // D = E13                 [2]
        cmpe      6                              // D ?= E6                 [3]
        td0       39, %"block%42"                // E sge D                 [5]
        jl        %"block%66"                    //                         [6]
%"block%42":                                     // block                   (2363)
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%48"                    //                         [4]
        jl        %"block%63"                    //                         [6]
%"block%48":                                     // block                   (2399)
        ldg       @test_features                 // D = @test_features      [24]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        xor                                      // D ^= *A                 [2]
        bdz       %"block%57"                    //                         [4]
        jl        %"block%51"                    //                         [6]
%"block%57":                                     // block                   (2459)
        ete       14, 2                          // E2 = E14                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%151"                   //                         [4]
        jmp       %"block%60"                    //                         [4]
%"block%151":                                    // block                   (2516)
        ldg       @.str.6                        // D = @.str.6             [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%60":                                     // block                   (2583)
        ldg       @.str.7                        // D = @.str.7             [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       13                             // E13 = *A                [3] **** spill related
        jl        %"block%63"                    //                         [6]
%"block%51":                                     // block                   (2671)
        ete       14, 2                          // E2 = E14                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        ete       13, 4                          // E4 = E13                [4]
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        etd       13                             // D = E13                 [2]
        xore      2                              // D ^= E2                 [3]
        bdnz      %"block%153"                   //                         [4]
        jmp       %"block%54"                    //                         [4]
%"block%153":                                    // block                   (2716)
        ldg       @.str.8                        // D = @.str.8             [24]
        dte       2                              // E2 = D                  [2]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%54":                                     // block                   (2798)
        ldg       @.str.9                        // D = @.str.9             [24]
        dte       2                              // E2 = D                  [2]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
%"block%63":                                     // block                   (2900)
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      1                              // D ?= E1                 [3]
        td1       43, %._crit_edge82             // E ult D                 [5]
        jl        %"block%209"                   //                         [6]
%._crit_edge82:                                  // block                   (2932)
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        jl        %"block%35"                    //                         [6]
%"block%107":                                    // block                   (2948)
        ldg       @test_f_stripped               // D = @test_f_stripped    [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        ldg       @test_v_stripped               // D = @test_v_stripped    [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @test_s_stripped               // D = @test_s_stripped    [24]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        ldg       @test_c_stripped               // D = @test_c_stripped    [24]
        dta                                      // A = D                   [2]
        lde       4                              // E4 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       5                              // E5 = D                  [2]
        lsr       3                              // D = -1                  [3]
        dte       6                              // E6 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        dte       12                             // E12 = D                 [2]
%"block%112":                                    // block                   (3079)
        etd       5                              // D = E5                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     14                             // A = D + E14             [3]
        lde       15                             // E15 = *A                [3]
        etd       5                              // D = E5                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x8                            // D |= 0x8                [6]
        dpeta     14                             // A = D + E14             [3]
        lde       7                              // E7 = *A                 [3]
        etd       5                              // D = E5                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x10                           // D |= 0x10               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       8                              // E8 = *A                 [3]
        etd       5                              // D = E5                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x18                           // D |= 0x18               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       9                              // E9 = *A                 [3]
        ldg       @non_standard_classes          // D = @non_standard_classes[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%129"                   //                         [4]
        jl        %"block%138"                   //                         [6]
%"block%129":                                    // block                   (3182)
        ldg       @class1                        // D = @class1             [24]
        dta                                      // A = D                   [2]
        etd       9                              // D = E9                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%132"                   //                         [4]
        jl        %._crit_edge89                 //                         [6]
%"block%132":                                    // block                   (3222)
        ldg       @class2                        // D = @class2             [24]
        dta                                      // A = D                   [2]
        etd       9                              // D = E9                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%135"                   //                         [4]
%._crit_edge90:                                  // block                   (3256)
        lsr       1                              // D = 0x1                 [3]
        dte       9                              // E9 = D                  [2]
        jmp       %"block%138"                   //                         [4]
%"block%135":                                    // block                   (3265)
        ldg       @.str.5                        // D = @.str.5             [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit       2                              // D = 0x2                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%._crit_edge89:                                  // block                   (3361)
        lsr       3                              // D = -1                  [3]
        dte       9                              // E9 = D                  [2]
%"block%138":                                    // block                   (3366)
        etd       6                              // D = E6                  [2]
        xore      15                             // D ^= E15                [3]
        bdnz      %"block%141"                   //                         [4]
        jmp       %"block%144"                   //                         [4]
%"block%141":                                    // block                   (3379)
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     3                              // A = D + E3              [3]
        etd       12                             // D = E12                 [2]
        wrd                                      // *A = D                  [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     4                              // A = D + E4              [3]
        etd       9                              // D = E9                  [2]
        wrd                                      // *A = D                  [2]
        ete       15, 6                          // E6 = E15                [4]
%"block%144":                                    // block                   (3409)
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        etd       7                              // D = E7                  [2]
        wrd                                      // *A = D                  [2]
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        etd       8                              // D = E8                  [2]
        wrd                                      // *A = D                  [2]
        eta       12                             // A = E12                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       12                             // E12 = A                 [2]
        eta       5                              // A = E5                  [2]
        aaimb     4                              // A += 4                  [3]
        ate       5                              // E5 = A                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      26                             // D = 0x4000000           [4]
        cmpe      5                              // D ?= E5                 [3]
        td0       43, %"block%209"               // E uge D                 [5]
        jl        %"block%112"                   //                         [6]
%._crit_edge:                                    // block                   (3470)
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
        lsr       0                              // D = 0x0                 [3]
        dte       12                             // E12 = D                 [2]
%"block%209":                                    // block                   (3480)
        ldg       @test_s_stripped               // D = @test_s_stripped    [24]
        dta                                      // A = D                   [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        addl      8                              // D += 8                  [6]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       12                             // D = E12                 [2]
        wrd                                      // *A = D                  [2]
        ldg       @test_features                 // D = @test_features      [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldc       @fclose                        // D = @fclose             [15]
        jale      1                              // E2 = call @fclose       [3]
        ete       14, 2                          // E2 = E14                [4]
        ldc       @free                          // D = @free               [15]
        jale      1                              // call @free              [3]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      3                              // A += 24                 [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        eta       0                              // A = E0                  [2] **** spill related
        aaim      4                              // A += 32                 [3] **** spill related
        lde       12                             // E12 = *A                [3] **** spill related
        eta       0                              // A = E0                  [2] **** spill related
        aaim      5                              // A += 40                 [3] **** spill related
        lde       13                             // E13 = *A                [3] **** spill related
        eta       0                              // A = E0                  [2] **** spill related
        aaim      6                              // A += 48                 [3] **** spill related
        lde       14                             // E14 = *A                [3] **** spill related
        eta       0                              // A = E0                  [2] **** spill related
        aaim      7                              // A += 56                 [3] **** spill related
        lde       15                             // E15 = *A                [3] **** spill related
%tn%0:                                           // block                   (3635)
        eta       0                              // A = newFP               [2]
        lde       0                              // E0 = oldFP              [3]
        ate       11                             // E11 = newFP             [2]
        ldr       @_frame_buckets_+8             // D = bucket              [24]
        dtd2                                     // D2 = FP                 [2]
        dta                                      // A = D                   [2]
%tn%11:
        ld                                       // D = *bucket             [1]
        bdgtz     %tn%12                         // bucket valid?           [4]
        bdz       %tn%12                         // bucket empty?           [4]
        jmp       %tn%11                         // bucket locked           [4]
%tn%12:
        eta       11                             // A = newFP               [2]
        std                                      // *fp = free list         [2]
        swapd                                    //                         [2]
        dta                                      // A = D                   [2]
        swapd                                    //                         [2]
        cas       11                             // bucket changed?         [3]
        bnz       %tn%11                         // if bucket changed, try again[4]
        jmpe      1                              // return                  [3]
        .function_end                            // function size           (3703)
        .extern   @printf
        .extern   @fflush
        .extern   @fopen
        .extern   @exit
        .extern   @malloc
        .extern   @fread
        .extern   @fclose
        .extern   @free
        .global   @get_accuracy
        .text
@get_accuracy:
        .function_begin                          // entry                   (0)
        ldr       @_frame_buckets_+0             // D = &bucket             [24]
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
%tn%5:
                                                 // end of prologue         (332)
        etd       15                             // D = E15                 [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      5                              // A += 40                 [3] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        etd       14                             // D = E14                 [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      4                              // A += 32                 [3] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      3                              // A += 24                 [3] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        etd       12                             // D = E12                 [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      2                              // A += 16                 [3] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        etd       1                              // D = E1                  [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      1                              // A += 8                  [3] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @test_sample_count             // D = @test_sample_count  [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        etd       1                              // D = E1                  [2]
        bdgtz     %"block%2"                     //                         [4]
%._crit_edge:                                    // block                   (412)
        lsr       0                              // D = 0x0                 [3]
        dte       15                             // E15 = D                 [2]
        jl        %"block%9"                     //                         [6]
%"block%2":                                      // block                   (423)
        ldg       @test_s_stripped               // D = @test_s_stripped    [24]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        ldg       @test_f_stripped               // D = @test_f_stripped    [24]
        dta                                      // A = D                   [2]
        lde       4                              // E4 = *A                 [3]
        ldg       @test_v_stripped               // D = @test_v_stripped    [24]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       6                              // E6 = D                  [2]
        ldg       @test_c_stripped               // D = @test_c_stripped    [24]
        dta                                      // A = D                   [2]
        lde       7                              // E7 = *A                 [3]
        eta       3                              // A = E3                  [2]
        lde       8                              // E8 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       10                             // E10 = D                 [2]
        lsr       0                              // D = 0x0                 [3]
        dte       15                             // E15 = D                 [2]
%"block%19":                                     // block                   (590)
        eta       10                             // A = E10                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       11                             // E11 = A                 [2]
        etd       11                             // D = E11                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     3                              // A = D + E3              [3]
        lde       9                              // E9 = *A                 [3]
        etd       9                              // D = E9                  [2]
        cmpe      8                              // D ?= E8                 [3]
        td1       39, %"block%27"                // E slt D                 [5]
        jmp       %._crit_edge22                 //                         [4]
%"block%27":                                     // block                   (623)
        eta       6                              // A = E6                  [2]
        lde       12                             // E12 = *A                [3]
        lsr       0                              // D = 0x0                 [3]
        dte       13                             // E13 = D                 [2]
%"block%30":                                     // block                   (633)
        etd       8                              // D = E8                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     4                              // A = D + E4              [3]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     12                             // A = D + E12             [3]
        lde       14                             // E14 = *A                [3]
        etd       8                              // D = E8                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     5                              // A = D + E5              [3]
        ld                                       // D = *A                  [1]
        multe     14                             // D *= E14                [3]
        srac      24                             // D >>= 24                [4]
        dpeta     13                             // A = D + E13             [3]
        ate       13                             // E13 = A                 [2]
        eta       8                              // A = E8                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       8                              // E8 = A                  [2]
        etd       9                              // D = E9                  [2]
        xore      8                              // D ^= E8                 [3]
        bdz       %"block%44"                    //                         [4]
        jmp       %"block%30"                    //                         [4]
%._crit_edge22:                                  // block                   (695)
        lsr       0                              // D = 0x0                 [3]
        dte       13                             // E13 = D                 [2]
%"block%44":                                     // block                   (700)
        etd       10                             // D = E10                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     7                              // A = D + E7              [3]
        ld                                       // D = *A                  [1]
        multe     13                             // D *= E13                [3]
        bdlez     %tn%2                          //                         [4]
%tn%0:                                           // block                   (717)
        lit16     1023                           // D = 0x3FF               [6]
        sllc      52                             // D = 0x3FF0000000000000  [4]
        fpadde    15                             // D += E15                [4]
        dte       15                             // E15 = D                 [2]
%tn%2:                                           // block                   (733)
        etd       1                              // D = E1                  [2]
        xore      11                             // D ^= E11                [3]
        bdz       %"block%9"                     //                         [4]
%._crit_edge24:                                  // block                   (742)
        ete       9, 8                           // E8 = E9                 [4]
        ete       11, 10                         // E10 = E11               [4]
        jl        %"block%19"                    //                         [6]
%"block%9":                                      // block                   (756)
        etd       1                              // D = E1                  [2]
        inttofp   1                              // D = double(D)           [3]
        dte       1                              // E1 = D                  [2]
        etd       15                             // D = E15                 [2]
        fpdive    1                              // D /= E1                 [4]
        dte       1                              // E1 = D                  [2]
        lit16     16473                          // D = 0x4059              [6]
        sllc      48                             // D = 0x4059000000000000  [4]
        fpmule    1                              // D *= E1                 [4]
        dte       1                              // E1 = D                  [2]
        ldg       @accuracies                    // D = @accuracies         [24]
        dta                                      // A = D                   [2]
        bita      %tn%12                         // A = *A                  [4]
%tn%12:
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lit16     1047                           // D = 0x417               [6]
        sllc      52                             // D = 0x4170000000000000  [4]
        fpmule    1                              // D *= E1                 [4]
        fptoint                                  // D = int(D)              [3]
        wrd                                      // *A = D                  [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      1                              // A += 8                  [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        eta       0                              // A = E0                  [2] **** spill related
        aaim      2                              // A += 16                 [3] **** spill related
        lde       12                             // E12 = *A                [3] **** spill related
        eta       0                              // A = E0                  [2] **** spill related
        aaim      3                              // A += 24                 [3] **** spill related
        lde       13                             // E13 = *A                [3] **** spill related
        eta       0                              // A = E0                  [2] **** spill related
        aaim      4                              // A += 32                 [3] **** spill related
        lde       14                             // E14 = *A                [3] **** spill related
        eta       0                              // A = E0                  [2] **** spill related
        aaim      5                              // A += 40                 [3] **** spill related
        lde       15                             // E15 = *A                [3] **** spill related
%tn%3:                                           // block                   (886)
        eta       0                              // A = newFP               [2]
        lde       0                              // E0 = oldFP              [3]
        ate       11                             // E11 = newFP             [2]
        ldr       @_frame_buckets_+0             // D = bucket              [24]
        dtd2                                     // D2 = FP                 [2]
        dta                                      // A = D                   [2]
%tn%13:
        ld                                       // D = *bucket             [1]
        bdgtz     %tn%14                         // bucket valid?           [4]
        bdz       %tn%14                         // bucket empty?           [4]
        jmp       %tn%13                         // bucket locked           [4]
%tn%14:
        eta       11                             // A = newFP               [2]
        std                                      // *fp = free list         [2]
        swapd                                    //                         [2]
        dta                                      // A = D                   [2]
        swapd                                    //                         [2]
        cas       11                             // bucket changed?         [3]
        bnz       %tn%13                         // if bucket changed, try again[4]
        jmpe      1                              // return                  [3]
        .function_end                            // function size           (954)
        .global   @get_stripped_accuracy
        .text
@get_stripped_accuracy:
        .function_begin                          // entry                   (0)
        ldr       @_frame_buckets_+8             // D = &bucket             [24]
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
        mts       0x1,0                          // clear tcb.WO            [6]
        lit16     256                            // D = 0x100               [6]
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
        dta                                      // A = &reg save area      [2]
        lsr       0                              // D = 0x0                 [3]
        std                                      // unlock reg save area    [2]
%tn%5:
                                                 // end of prologue         (334)
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        etd       14                             // D = E14                 [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      7                              // A += 56                 [3] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      6                              // A += 48                 [3] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        etd       12                             // D = E12                 [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      5                              // A += 40                 [3] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        etd       1                              // D = E1                  [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      4                              // A += 32                 [3] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @test_sample_count             // D = @test_sample_count  [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        etd       1                              // D = E1                  [2]
        bdgtz     %"block%2"                     //                         [4]
%._crit_edge:                                    // block                   (416)
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        jl        %"block%4"                     //                         [6]
%"block%2":                                      // block                   (434)
        ldg       @stdout                        // D = @stdout             [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
%"block%14":                                     // block                   (498)
        ldg       @test_s_stripped               // D = @test_s_stripped    [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        lde       12                             // E12 = *A                [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      2                              // D += E2                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        lde       14                             // E14 = *A                [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      12                             // D ?= E12                [3]
        td0       39, %"block%24"                // E sge D                 [5]
        jmp       %"block%31"                    //                         [4]
%"block%24":                                     // block                   (603)
        ldg       @total_test_points             // D = @total_test_points  [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        etd       1                              // D = E1                  [2]
        cmpe      14                             // D ?= E14                [3]
        srlc      39                             // shift bit 39(sgt) to 0  [4]
        muma1     0                              // D &= 1                  [4]
        dte       2                              // E2 = D                  [2]
        lsr       3                              // D = -1                  [3]
        cmpe      14                             // D ?= E14                [3]
        srlc      38                             // shift bit 38(slt) to 0  [4]
        muma1     0                              // D &= 1                  [4]
        dte       3                              // E3 = D                  [2]
        etd       1                              // D = E1                  [2]
        cmpe      12                             // D ?= E12                [3]
        srlc      39                             // shift bit 39(sgt) to 0  [4]
        muma1     0                              // D &= 1                  [4]
        ande      3                              // D &= E3                 [3]
        ande      2                              // D &= E2                 [3]
        td0       0, %"block%31"                 // if LSB is clear         [5]
        jmp       %"block%34"                    //                         [4]
%"block%31":                                     // block                   (691)
        ldg       @.str.11                       // D = @.str.11            [24]
        dte       2                              // E2 = D                  [2]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        etd       12                             // D = E12                 [2]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        etd       14                             // D = E14                 [2]
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
%"block%34":                                     // block                   (796)
        etd       14                             // D = E14                 [2]
        cmpe      12                             // D ?= E12                [3]
        td1       39, %"block%36"                // E slt D                 [5]
%._crit_edge22:                                  // block                   (806)
        lsr       0                              // D = 0x0                 [3]
        dte       13                             // E13 = D                 [2]
        jl        %"block%62"                    //                         [6]
%"block%36":                                     // block                   (817)
        lsr       0                              // D = 0x0                 [3]
        dte       13                             // E13 = D                 [2]
%"block%37":                                     // block                   (822)
        ldg       @test_f_stripped               // D = @test_f_stripped    [24]
        dta                                      // A = D                   [2]
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       15                             // E15 = *A                [3]
        lsr       3                              // D = -1                  [3]
        cmpe      15                             // D ?= E15                [3]
        srlc      38                             // shift bit 38(slt) to 0  [4]
        muma1     0                              // D &= 1                  [4]
        dte       1                              // E1 = D                  [2]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      15                             // D ?= E15                [3]
        srlc      39                             // shift bit 39(sgt) to 0  [4]
        muma1     0                              // D &= 1                  [4]
        ande      1                              // D &= E1                 [3]
        td0       0, %"block%47"                 // if LSB is clear         [5]
        jmp       %"block%50"                    //                         [4]
%"block%47":                                     // block                   (927)
        ldg       @.str.12                       // D = @.str.12            [24]
        dte       2                              // E2 = D                  [2]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        etd       15                             // D = E15                 [2]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
%"block%50":                                     // block                   (1023)
        ldg       @model_vec_stripped            // D = @model_vec_stripped [24]
        dta                                      // A = D                   [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        ldg       @test_v_stripped               // D = @test_v_stripped    [24]
        dta                                      // A = D                   [2]
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        multe     1                              // D *= E1                 [3]
        srac      24                             // D >>= 24                [4]
        dpeta     13                             // A = D + E13             [3]
        ate       13                             // E13 = A                 [2]
        eta       12                             // A = E12                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       12                             // E12 = A                 [2]
        etd       14                             // D = E14                 [2]
        xore      12                             // D ^= E12                [3]
        bdz       %"block%62"                    //                         [4]
        jl        %"block%37"                    //                         [6]
%"block%62":                                     // block                   (1133)
        ldg       @test_c_stripped               // D = @test_c_stripped    [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        ld                                       // D = *A                  [1]
        multe     13                             // D *= E13                [3]
        bdgtz     %tn%0                          //                         [4]
        jmp       %tn%2                          //                         [4]
%tn%0:                                           // block                   (1189)
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lit16     1023                           // D = 0x3FF               [6]
        sllc      52                             // D = 0x3FF0000000000000  [4]
        fpadde    1                              // D += E1                 [4]
        wrd                                      // *A = D                  [2] **** spill related
%tn%2:                                           // block                   (1222)
        ldg       @test_sample_count             // D = @test_sample_count  [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      1                              // D ?= E1                 [3]
        td1       38, %._crit_edge25             // D slt E                 [5]
        jmp       %"block%4"                     //                         [4]
%._crit_edge25:                                  // block                   (1271)
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        jl        %"block%14"                    //                         [6]
%"block%4":                                      // block                   (1298)
        etd       1                              // D = E1                  [2]
        inttofp   1                              // D = double(D)           [3]
        dte       1                              // E1 = D                  [2]
        lit16     16473                          // D = 0x4059              [6]
        sllc      48                             // D = 0x4059000000000000  [4]
        dte       2                              // E2 = D                  [2]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        fpdive    1                              // D /= E1                 [4]
        fpmule    2                              // D *= E2                 [4]
        dte       1                              // E1 = D                  [2]
        ldg       @accuracies                    // D = @accuracies         [24]
        dta                                      // A = D                   [2]
        bita      %tn%12                         // A = *A                  [4]
%tn%12:
        bita      %tn%13                         // A = *A                  [4]
%tn%13:
        lit16     1047                           // D = 0x417               [6]
        sllc      52                             // D = 0x4170000000000000  [4]
        fpmule    1                              // D *= E1                 [4]
        fptoint                                  // D = int(D)              [3]
        wrd                                      // *A = D                  [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      4                              // A += 32                 [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        eta       0                              // A = E0                  [2] **** spill related
        aaim      5                              // A += 40                 [3] **** spill related
        lde       12                             // E12 = *A                [3] **** spill related
        eta       0                              // A = E0                  [2] **** spill related
        aaim      6                              // A += 48                 [3] **** spill related
        lde       13                             // E13 = *A                [3] **** spill related
        eta       0                              // A = E0                  [2] **** spill related
        aaim      7                              // A += 56                 [3] **** spill related
        lde       14                             // E14 = *A                [3] **** spill related
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       15                             // E15 = *A                [3] **** spill related
%tn%3:                                           // block                   (1430)
        eta       0                              // A = newFP               [2]
        lde       0                              // E0 = oldFP              [3]
        ate       11                             // E11 = newFP             [2]
        ldr       @_frame_buckets_+8             // D = bucket              [24]
        dtd2                                     // D2 = FP                 [2]
        dta                                      // A = D                   [2]
%tn%14:
        ld                                       // D = *bucket             [1]
        bdgtz     %tn%15                         // bucket valid?           [4]
        bdz       %tn%15                         // bucket empty?           [4]
        jmp       %tn%14                         // bucket locked           [4]
%tn%15:
        eta       11                             // A = newFP               [2]
        std                                      // *fp = free list         [2]
        swapd                                    //                         [2]
        dta                                      // A = D                   [2]
        swapd                                    //                         [2]
        cas       11                             // bucket changed?         [3]
        bnz       %tn%14                         // if bucket changed, try again[4]
        jmpe      1                              // return                  [3]
        .function_end                            // function size           (1498)
        .global   @reduce_models
        .text
@reduce_models:
        .function_begin                          // entry                   (0)
                                                 // empty prologue          [0]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%2"                     //                         [4]
        jmp       %"block%3"                     //                         [4]
%"block%2":                                      // block                   (35)
        lsr       0                              // D = 0x0                 [3]
        dte       3                              // E3 = D                  [2]
%"block%4":                                      // block                   (40)
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        lde       4                              // E4 = *A                 [3]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        eta       4                              // A = E4                  [2]
        add                                      // D += *A                 [2]
        dte       5                              // E5 = D                  [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     4                              // A = D + E4              [3]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        eta       5                              // A = E5                  [2]
        radd                                     // *A += D                 [2]
        eta       3                              // A = E3                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       3                              // E3 = A                  [2]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      3                              // D ?= E3                 [3]
        td0       39, %"block%3"                 // E sge D                 [5]
        jmp       %"block%4"                     //                         [4]
%"block%3":                                      // block                   (151)
        jmpe      1                              // return void             [3]
        .function_end                            // function size           (154)
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
