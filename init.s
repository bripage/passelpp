        .weak   @train_data_path
        .data
        .align    3
@train_data_path:
        .long     0
        .weak   @test_feature_path
        .align    3
@test_feature_path:
        .long     0
        .global   @non_standard_classes
        .replicated
        .align    3
@non_standard_classes:
        .long     0
        .extern   @threads_per_cluster
        .extern   @cluster_count
        .global   @samples_per_cluster
        .align    3
@samples_per_cluster:
        .long     0
        .data
@.str:
        .byte     45
        .byte     45
        .byte     116
        .byte     114
        .byte     97
        .byte     105
        .byte     110
        .byte     45
        .byte     100
        .byte     97
        .byte     116
        .byte     97
        .byte     0
@.str.1:
        .byte     45
        .byte     45
        .byte     116
        .byte     101
        .byte     115
        .byte     116
        .byte     45
        .byte     100
        .byte     97
        .byte     116
        .byte     97
        .byte     0
@.str.2:
        .byte     45
        .byte     102
        .byte     0
        .global   @featureSetSize
        .replicated
        .align    3
@featureSetSize:
        .long     0
        .data
@.str.3:
        .byte     45
        .byte     45
        .byte     116
        .byte     114
        .byte     97
        .byte     105
        .byte     110
        .byte     45
        .byte     115
        .byte     97
        .byte     109
        .byte     112
        .byte     108
        .byte     101
        .byte     115
        .byte     0
        .global   @train_sample_count
        .replicated
        .align    3
@train_sample_count:
        .long     0
        .data
@.str.4:
        .byte     45
        .byte     45
        .byte     99
        .byte     108
        .byte     97
        .byte     115
        .byte     115
        .byte     45
        .byte     118
        .byte     97
        .byte     108
        .byte     117
        .byte     101
        .byte     115
        .byte     0
        .global   @class1
        .replicated
        .align    3
@class1:
        .long     0
        .global   @class2
        .align    3
@class2:
        .long     0
        .data
@.str.5:
        .byte     45
        .byte     101
        .byte     0
        .extern   @epochs
@.str.6:
        .byte     45
        .byte     45
        .byte     116
        .byte     114
        .byte     97
        .byte     105
        .byte     110
        .byte     45
        .byte     112
        .byte     111
        .byte     105
        .byte     110
        .byte     116
        .byte     115
        .byte     0
        .global   @total_train_points
        .replicated
        .align    3
@total_train_points:
        .long     0
        .data
@.str.7:
        .byte     45
        .byte     45
        .byte     116
        .byte     101
        .byte     115
        .byte     116
        .byte     45
        .byte     115
        .byte     97
        .byte     109
        .byte     112
        .byte     108
        .byte     101
        .byte     115
        .byte     0
        .global   @test_sample_count
        .replicated
        .align    3
@test_sample_count:
        .long     0
        .data
@.str.8:
        .byte     45
        .byte     45
        .byte     116
        .byte     101
        .byte     115
        .byte     116
        .byte     45
        .byte     112
        .byte     111
        .byte     105
        .byte     110
        .byte     116
        .byte     115
        .byte     0
        .global   @total_test_points
        .replicated
        .align    3
@total_test_points:
        .long     0
        .data
@.str.9:
        .byte     45
        .byte     45
        .byte     116
        .byte     104
        .byte     114
        .byte     101
        .byte     97
        .byte     100
        .byte     115
        .byte     45
        .byte     112
        .byte     101
        .byte     114
        .byte     45
        .byte     99
        .byte     108
        .byte     117
        .byte     115
        .byte     116
        .byte     101
        .byte     114
        .byte     0
@.str.10:
        .byte     45
        .byte     45
        .byte     105
        .byte     110
        .byte     105
        .byte     116
        .byte     105
        .byte     97
        .byte     108
        .byte     45
        .byte     115
        .byte     116
        .byte     101
        .byte     112
        .byte     45
        .byte     115
        .byte     105
        .byte     122
        .byte     101
        .byte     0
@.str.11:
        .byte     37
        .byte     108
        .byte     102
        .byte     0
        .extern   @eta
@.str.12:
        .byte     45
        .byte     45
        .byte     105
        .byte     110
        .byte     105
        .byte     116
        .byte     105
        .byte     97
        .byte     108
        .byte     45
        .byte     115
        .byte     116
        .byte     101
        .byte     112
        .byte     45
        .byte     100
        .byte     101
        .byte     99
        .byte     97
        .byte     121
        .byte     0
        .extern   @gamma
@.str.13:
        .byte     45
        .byte     99
        .byte     0
@.str.14:
        .byte     45
        .byte     45
        .byte     116
        .byte     101
        .byte     115
        .byte     116
        .byte     45
        .byte     105
        .byte     100
        .byte     0
        .extern   @test_id
@.str.15:
        .byte     45
        .byte     45
        .byte     117
        .byte     112
        .byte     100
        .byte     97
        .byte     116
        .byte     101
        .byte     45
        .byte     112
        .byte     101
        .byte     114
        .byte     105
        .byte     111
        .byte     100
        .byte     0
        .global   @update_period
        .replicated
        .align    3
@update_period:
        .long     0
        .data
@.str.16:
        .byte     45
        .byte     45
        .byte     117
        .byte     115
        .byte     105
        .byte     110
        .byte     103
        .byte     45
        .byte     99
        .byte     108
        .byte     117
        .byte     115
        .byte     116
        .byte     101
        .byte     114
        .byte     115
        .byte     0
@.str.17:
        .byte     45
        .byte     45
        .byte     109
        .byte     117
        .byte     108
        .byte     116
        .byte     105
        .byte     45
        .byte     108
        .byte     111
        .byte     97
        .byte     100
        .byte     0
@.str.18:
        .byte     45
        .byte     114
        .byte     0
        .extern   @clock_rate
@.str.19:
        .byte     91
        .byte     69
        .byte     82
        .byte     82
        .byte     79
        .byte     82
        .byte     93
        .byte     58
        .byte     32
        .byte     67
        .byte     108
        .byte     111
        .byte     99
        .byte     107
        .byte     32
        .byte     82
        .byte     97
        .byte     116
        .byte     101
        .byte     32
        .byte     78
        .byte     79
        .byte     84
        .byte     32
        .byte     83
        .byte     101
        .byte     116
        .byte     33
        .byte     10
        .byte     0
        .extern   @stdout
        .global   @node_count
        .replicated
        .align    3
@node_count:
        .long     0
        .extern   @using_clusters
        .data
@.str.20:
        .byte     85
        .byte     115
        .byte     105
        .byte     110
        .byte     103
        .byte     32
        .byte     77
        .byte     117
        .byte     108
        .byte     116
        .byte     105
        .byte     112
        .byte     108
        .byte     101
        .byte     32
        .byte     67
        .byte     108
        .byte     117
        .byte     115
        .byte     116
        .byte     101
        .byte     114
        .byte     115
        .byte     58
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     10
        .byte     0
        .global   @multi_file_load
        .replicated
        .align    3
@multi_file_load:
        .long     0
        .data
@.str.21:
        .byte     77
        .byte     117
        .byte     108
        .byte     116
        .byte     105
        .byte     32
        .byte     70
        .byte     105
        .byte     108
        .byte     101
        .byte     32
        .byte     76
        .byte     111
        .byte     97
        .byte     100
        .byte     58
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     10
        .byte     0
@.str.22:
        .byte     115
        .byte     97
        .byte     109
        .byte     112
        .byte     108
        .byte     101
        .byte     115
        .byte     32
        .byte     112
        .byte     101
        .byte     114
        .byte     32
        .byte     99
        .byte     108
        .byte     117
        .byte     115
        .byte     116
        .byte     101
        .byte     114
        .byte     58
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     10
        .byte     0
        .extern   @beta
        .global   @lambda
        .replicated
        .align    3
@lambda:
        .long     0
        .global   @one_min_lambda
        .align    3
@one_min_lambda:
        .long     0
        .data
@.str.23:
        .byte     85
        .byte     112
        .byte     100
        .byte     97
        .byte     116
        .byte     101
        .byte     32
        .byte     80
        .byte     101
        .byte     114
        .byte     105
        .byte     111
        .byte     100
        .byte     58
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     10
        .byte     0
        .global   @data_read_buffer
        .replicated
        .align    3
@data_read_buffer:
        .long     0
        .data
@.str.24:
        .byte     37
        .byte     115
        .byte     112
        .byte     37
        .byte     108
        .byte     100
        .byte     46
        .byte     98
        .byte     105
        .byte     110
        .byte     0
@.str.25:
        .byte     110
        .byte     111
        .byte     100
        .byte     101
        .byte     37
        .byte     108
        .byte     100
        .byte     32
        .byte     102
        .byte     105
        .byte     108
        .byte     101
        .byte     110
        .byte     97
        .byte     109
        .byte     101
        .byte     32
        .byte     61
        .byte     32
        .byte     37
        .byte     115
        .byte     10
        .byte     0
@.str.26:
        .byte     114
        .byte     98
        .byte     0
@.str.27:
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
        .byte     114
        .byte     97
        .byte     105
        .byte     110
        .byte     105
        .byte     110
        .byte     103
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
@.str.28:
        .byte     110
        .byte     111
        .byte     100
        .byte     101
        .byte     37
        .byte     108
        .byte     100
        .byte     32
        .byte     110
        .byte     111
        .byte     110
        .byte     45
        .byte     122
        .byte     101
        .byte     114
        .byte     111
        .byte     115
        .byte     32
        .byte     61
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     10
        .byte     0
@.str.29:
        .byte     110
        .byte     111
        .byte     100
        .byte     101
        .byte     37
        .byte     108
        .byte     100
        .byte     58
        .byte     32
        .byte     102
        .byte     105
        .byte     108
        .byte     101
        .byte     32
        .byte     108
        .byte     97
        .byte     114
        .byte     103
        .byte     101
        .byte     114
        .byte     32
        .byte     116
        .byte     104
        .byte     97
        .byte     110
        .byte     32
        .byte     97
        .byte     108
        .byte     108
        .byte     111
        .byte     99
        .byte     97
        .byte     116
        .byte     101
        .byte     100
        .byte     32
        .byte     115
        .byte     112
        .byte     97
        .byte     99
        .byte     101
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     32
        .byte     62
        .byte     61
        .byte     32
        .byte     36
        .byte     108
        .byte     100
        .byte     10
        .byte     0
@.str.30:
        .byte     68
        .byte     111
        .byte     110
        .byte     101
        .byte     32
        .byte     111
        .byte     112
        .byte     101
        .byte     110
        .byte     105
        .byte     110
        .byte     103
        .byte     32
        .byte     102
        .byte     105
        .byte     108
        .byte     101
        .byte     115
        .byte     10
        .byte     0
@.str.31:
        .byte     110
        .byte     111
        .byte     100
        .byte     101
        .byte     37
        .byte     108
        .byte     100
        .byte     32
        .byte     108
        .byte     111
        .byte     97
        .byte     100
        .byte     105
        .byte     110
        .byte     103
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     47
        .byte     37
        .byte     108
        .byte     100
        .byte     10
        .byte     0
@.str.32:
        .byte     69
        .byte     82
        .byte     82
        .byte     79
        .byte     82
        .byte     58
        .byte     32
        .byte     110
        .byte     111
        .byte     100
        .byte     101
        .byte     37
        .byte     108
        .byte     100
        .byte     32
        .byte     114
        .byte     101
        .byte     97
        .byte     100
        .byte     32
        .byte     98
        .byte     117
        .byte     102
        .byte     102
        .byte     101
        .byte     114
        .byte     32
        .byte     116
        .byte     111
        .byte     111
        .byte     32
        .byte     115
        .byte     109
        .byte     97
        .byte     108
        .byte     108
        .byte     32
        .byte     40
        .byte     37
        .byte     108
        .byte     100
        .byte     47
        .byte     49
        .byte     54
        .byte     55
        .byte     55
        .byte     55
        .byte     50
        .byte     49
        .byte     54
        .byte     41
        .byte     10
        .byte     0
@.str.33:
        .byte     69
        .byte     82
        .byte     82
        .byte     79
        .byte     82
        .byte     58
        .byte     32
        .byte     110
        .byte     111
        .byte     100
        .byte     101
        .byte     37
        .byte     108
        .byte     100
        .byte     32
        .byte     97
        .byte     116
        .byte     116
        .byte     101
        .byte     109
        .byte     112
        .byte     116
        .byte     105
        .byte     110
        .byte     103
        .byte     32
        .byte     116
        .byte     111
        .byte     32
        .byte     108
        .byte     111
        .byte     97
        .byte     100
        .byte     32
        .byte     112
        .byte     97
        .byte     115
        .byte     116
        .byte     32
        .byte     102
        .byte     105
        .byte     108
        .byte     101
        .byte     32
        .byte     101
        .byte     110
        .byte     100
        .byte     32
        .byte     40
        .byte     37
        .byte     108
        .byte     100
        .byte     47
        .byte     37
        .byte     108
        .byte     100
        .byte     41
        .byte     10
        .byte     0
@.str.34:
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
        .global   @train_s
        .replicated
        .align    3
@train_s:
        .long     0
        .global   @train_c
        .align    3
@train_c:
        .long     0
        .global   @train_f
        .align    3
@train_f:
        .long     0
        .global   @train_v
        .align    3
@train_v:
        .long     0
        .global   @feat_deg_recip
        .align    3
@feat_deg_recip:
        .long     0
        .data
@.str.35:
        .byte     67
        .byte     104
        .byte     117
        .byte     110
        .byte     107
        .byte     32
        .byte     76
        .byte     111
        .byte     97
        .byte     100
        .byte     105
        .byte     110
        .byte     103
        .byte     58
        .byte     32
        .byte     70
        .byte     65
        .byte     76
        .byte     83
        .byte     69
        .byte     10
        .byte     0
@.str.36:
        .byte     68
        .byte     111
        .byte     110
        .byte     101
        .byte     32
        .byte     114
        .byte     101
        .byte     97
        .byte     100
        .byte     105
        .byte     110
        .byte     103
        .byte     32
        .byte     105
        .byte     110
        .byte     32
        .byte     100
        .byte     97
        .byte     116
        .byte     97
        .byte     10
        .byte     0
@.str.37:
        .byte     110
        .byte     111
        .byte     100
        .byte     101
        .byte     37
        .byte     108
        .byte     100
        .byte     58
        .byte     32
        .byte     115
        .byte     97
        .byte     109
        .byte     112
        .byte     108
        .byte     101
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     32
        .byte     62
        .byte     61
        .byte     32
        .byte     36
        .byte     108
        .byte     100
        .byte     10
        .byte     0
        .global   @cluster_samples
        .replicated
        .align    3
@cluster_samples:
        .long     0
        .data
@.str.38:
        .byte     68
        .byte     111
        .byte     110
        .byte     101
        .byte     32
        .byte     70
        .byte     105
        .byte     110
        .byte     97
        .byte     108
        .byte     105
        .byte     122
        .byte     105
        .byte     110
        .byte     103
        .byte     32
        .byte     83
        .byte     97
        .byte     109
        .byte     112
        .byte     108
        .byte     101
        .byte     32
        .byte     80
        .byte     111
        .byte     105
        .byte     110
        .byte     116
        .byte     101
        .byte     114
        .byte     115
        .byte     10
        .byte     0
@.str.39:
        .byte     68
        .byte     111
        .byte     110
        .byte     101
        .byte     32
        .byte     102
        .byte     114
        .byte     101
        .byte     101
        .byte     105
        .byte     110
        .byte     103
        .byte     32
        .byte     116
        .byte     101
        .byte     109
        .byte     112
        .byte     32
        .byte     97
        .byte     114
        .byte     114
        .byte     97
        .byte     121
        .byte     115
        .byte     10
        .byte     0
@.str.40:
        .byte     115
        .byte     97
        .byte     109
        .byte     112
        .byte     108
        .byte     101
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     10
        .byte     0
@.str.41:
        .byte     37
        .byte     108
        .byte     100
        .byte     44
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     44
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     44
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     44
        .byte     32
        .byte     106
        .byte     32
        .byte     61
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     44
        .byte     32
        .byte     110
        .byte     111
        .byte     110
        .byte     95
        .byte     122
        .byte     101
        .byte     114
        .byte     111
        .byte     115
        .byte     95
        .byte     112
        .byte     101
        .byte     114
        .byte     95
        .byte     110
        .byte     111
        .byte     100
        .byte     101
        .byte     32
        .byte     61
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     10
        .byte     0
        .global   @non_zeros_per_node
        .replicated
        .align    3
@non_zeros_per_node:
        .long     0
        .data
@.str.42:
        .byte     116
        .byte     114
        .byte     97
        .byte     105
        .byte     110
        .byte     95
        .byte     102
        .byte     91
        .byte     37
        .byte     108
        .byte     100
        .byte     93
        .byte     91
        .byte     37
        .byte     108
        .byte     100
        .byte     93
        .byte     32
        .byte     61
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     10
        .byte     0
@.str.43:
        .byte     116
        .byte     114
        .byte     97
        .byte     105
        .byte     110
        .byte     95
        .byte     118
        .byte     91
        .byte     37
        .byte     108
        .byte     100
        .byte     93
        .byte     91
        .byte     37
        .byte     108
        .byte     100
        .byte     93
        .byte     32
        .byte     61
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     10
        .byte     0
@.str.44:
        .byte     102
        .byte     101
        .byte     97
        .byte     116
        .byte     95
        .byte     100
        .byte     101
        .byte     103
        .byte     95
        .byte     114
        .byte     101
        .byte     99
        .byte     105
        .byte     112
        .byte     91
        .byte     37
        .byte     108
        .byte     100
        .byte     93
        .byte     91
        .byte     37
        .byte     108
        .byte     100
        .byte     93
        .byte     43
        .byte     43
        .byte     10
        .byte     0
@.str.45:
        .byte     110
        .byte     111
        .byte     100
        .byte     101
        .byte     37
        .byte     108
        .byte     100
        .byte     32
        .byte     108
        .byte     111
        .byte     97
        .byte     100
        .byte     105
        .byte     110
        .byte     103
        .byte     32
        .byte     68
        .byte     111
        .byte     110
        .byte     101
        .byte     32
        .byte     76
        .byte     111
        .byte     97
        .byte     100
        .byte     105
        .byte     110
        .byte     103
        .byte     10
        .byte     0
        .weak   @train_data
        .align    3
@train_data:
        .long     0
@.str.46:
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
@.str.47:
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
@.str.48:
        .byte     97
        .byte     108
        .byte     108
        .byte     111
        .byte     99
        .byte     97
        .byte     116
        .byte     105
        .byte     110
        .byte     103
        .byte     32
        .byte     98
        .byte     117
        .byte     102
        .byte     102
        .byte     101
        .byte     114
        .byte     32
        .byte     102
        .byte     111
        .byte     114
        .byte     32
        .byte     102
        .byte     105
        .byte     110
        .byte     97
        .byte     108
        .byte     32
        .byte     99
        .byte     104
        .byte     117
        .byte     110
        .byte     107
        .byte     10
        .byte     0
@.str.49:
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
@.str.50:
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
@.str.51:
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
@.str.52:
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
@.str.53:
        .byte     42
        .byte     42
        .byte     42
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
@.str.54:
        .byte     83
        .byte     116
        .byte     97
        .byte     114
        .byte     116
        .byte     105
        .byte     110
        .byte     103
        .byte     32
        .byte     102
        .byte     101
        .byte     116
        .byte     117
        .byte     114
        .byte     101
        .byte     32
        .byte     112
        .byte     97
        .byte     114
        .byte     116
        .byte     105
        .byte     111
        .byte     110
        .byte     101
        .byte     100
        .byte     32
        .byte     100
        .byte     97
        .byte     116
        .byte     97
        .byte     32
        .byte     108
        .byte     111
        .byte     97
        .byte     100
        .byte     10
        .byte     0
        .global   @feat_deg_recip_stripped
        .replicated
        .align    3
@feat_deg_recip_stripped:
        .long     0
        .data
@.str.55:
        .byte     112
        .byte     111
        .byte     112
        .byte     117
        .byte     108
        .byte     97
        .byte     116
        .byte     101
        .byte     95
        .byte     100
        .byte     97
        .byte     116
        .byte     97
        .byte     40
        .byte     41
        .byte     32
        .byte     100
        .byte     111
        .byte     110
        .byte     101
        .byte     10
        .byte     0
@.str.56:
        .byte     37
        .byte     108
        .byte     100
        .byte     32
        .byte     115
        .byte     97
        .byte     109
        .byte     112
        .byte     108
        .byte     101
        .byte     115
        .byte     32
        .byte     114
        .byte     101
        .byte     97
        .byte     100
        .byte     10
        .byte     0
        .global   @model_vec
        .replicated
        .align    3
@model_vec:
        .long     0
        .global   @working_vec
        .align    3
@working_vec:
        .long     0
        .global   @accuracies
        .align    3
@accuracies:
        .long     0
        .global   @total_evaluated_sample_count
        .align    3
@total_evaluated_sample_count:
        .long     0
        .global   @samples_since_token
        .align    3
@samples_since_token:
        .long     0
        .global   @upstream
        .align    3
@upstream:
        .long     0
        .global   @token
        .align    3
@token:
        .long     0
        .data
@.str.57:
        .byte     110
        .byte     111
        .byte     110
        .byte     95
        .byte     122
        .byte     101
        .byte     114
        .byte     111
        .byte     115
        .byte     95
        .byte     112
        .byte     101
        .byte     114
        .byte     95
        .byte     99
        .byte     108
        .byte     117
        .byte     115
        .byte     116
        .byte     101
        .byte     114
        .byte     32
        .byte     61
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     10
        .byte     0
@.str.58:
        .byte     110
        .byte     111
        .byte     110
        .byte     122
        .byte     101
        .byte     114
        .byte     111
        .byte     115
        .byte     95
        .byte     112
        .byte     101
        .byte     114
        .byte     95
        .byte     110
        .byte     111
        .byte     100
        .byte     101
        .byte     32
        .byte     61
        .byte     32
        .byte     37
        .byte     108
        .byte     100
        .byte     10
        .byte     0
        .global   @gradients
        .replicated
        .align    3
@gradients:
        .long     0
        .global   @test_s_stripped
        .align    3
@test_s_stripped:
        .long     0
        .global   @test_f_stripped
        .align    3
@test_f_stripped:
        .long     0
        .global   @test_v_stripped
        .align    3
@test_v_stripped:
        .long     0
        .global   @test_c_stripped
        .align    3
@test_c_stripped:
        .long     0
        .data
@.str.59:
        .byte     45
        .byte     45
        .byte     45
        .byte     32
        .byte     77
        .byte     101
        .byte     109
        .byte     109
        .byte     111
        .byte     114
        .byte     121
        .byte     32
        .byte     65
        .byte     108
        .byte     108
        .byte     111
        .byte     99
        .byte     97
        .byte     116
        .byte     105
        .byte     111
        .byte     110
        .byte     32
        .byte     67
        .byte     111
        .byte     109
        .byte     112
        .byte     108
        .byte     101
        .byte     116
        .byte     101
        .byte     32
        .byte     45
        .byte     45
        .byte     45
        .byte     10
        .byte     0
@.str.60:
        .byte     45
        .byte     45
        .byte     45
        .byte     32
        .byte     71
        .byte     114
        .byte     97
        .byte     100
        .byte     105
        .byte     101
        .byte     110
        .byte     116
        .byte     32
        .byte     65
        .byte     114
        .byte     114
        .byte     97
        .byte     121
        .byte     32
        .byte     73
        .byte     110
        .byte     105
        .byte     116
        .byte     105
        .byte     97
        .byte     108
        .byte     105
        .byte     122
        .byte     101
        .byte     100
        .byte     32
        .byte     45
        .byte     45
        .byte     45
        .byte     10
        .byte     0
@.str.61:
        .byte     45
        .byte     45
        .byte     45
        .byte     32
        .byte     77
        .byte     101
        .byte     109
        .byte     109
        .byte     111
        .byte     114
        .byte     121
        .byte     32
        .byte     73
        .byte     110
        .byte     105
        .byte     116
        .byte     105
        .byte     97
        .byte     108
        .byte     105
        .byte     122
        .byte     97
        .byte     116
        .byte     105
        .byte     111
        .byte     110
        .byte     32
        .byte     67
        .byte     111
        .byte     109
        .byte     112
        .byte     108
        .byte     101
        .byte     116
        .byte     101
        .byte     32
        .byte     45
        .byte     45
        .byte     45
        .byte     10
        .byte     0
@.str.62:
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
        .byte     76
        .byte     111
        .byte     97
        .byte     100
        .byte     32
        .byte     84
        .byte     105
        .byte     109
        .byte     101
        .byte     58
        .byte     32
        .byte     37
        .byte     108
        .byte     102
        .byte     10
        .byte     0
@.str.63:
        .byte     70
        .byte     32
        .byte     100
        .byte     101
        .byte     103
        .byte     114
        .byte     101
        .byte     101
        .byte     32
        .byte     100
        .byte     105
        .byte     115
        .byte     32
        .byte     68
        .byte     111
        .byte     110
        .byte     101
        .byte     10
        .byte     0
@.str.64:
        .byte     45
        .byte     45
        .byte     45
        .byte     32
        .byte     73
        .byte     110
        .byte     105
        .byte     116
        .byte     105
        .byte     97
        .byte     108
        .byte     105
        .byte     122
        .byte     97
        .byte     116
        .byte     105
        .byte     111
        .byte     110
        .byte     32
        .byte     67
        .byte     111
        .byte     109
        .byte     112
        .byte     108
        .byte     101
        .byte     116
        .byte     101
        .byte     32
        .byte     45
        .byte     45
        .byte     45
        .byte     10
        .byte     0
        .weak   @initial_step_size
        .align    3
@initial_step_size:
        .double   0x0p+0
        .weak   @initial_step_decay
        .align    3
@initial_step_decay:
        .double   0x0p+0
        .weak   @test_label_path
        .align    3
@test_label_path:
        .long     0
        .global   @points_to_read
        .replicated
        .align    3
@points_to_read:
        .long     0
        .global   @model_vec_stripped
        .align    3
@model_vec_stripped:
        .long     0
        .global   @run_flag
        .align    3
@run_flag:
        .long     0
        .global   @node_nnzs
        .align    3
@node_nnzs:
        .long     0
        .weak   @test_features
        .data
        .align    3
@test_features:
        .long     0
        .global   @SolveBeta
        .text
@SolveBeta:
        .function_begin                          // entry                   (0)
        ldr       @_frame_buckets_+0             // D = &bucket             [24]
        dta                                      // A = &bucket             [2]
        ata2                                     // A2 = &bucket            [2]
%tn%12:
        lsr       3                              // D = -1                  [3]
        swap                                     // lock bucket & put cur bucket value in D[2]
        bdgtz     %tn%13                         // won lock, jump to that  [4]
        jmp       %tn%14                         // didn't win lock, jump to that[4]
%tn%13:
        dta                                      // A = new FP              [2]
        etd       0                              // D = caller's FP         [2]
        ate       0                              // E0 = new FP             [2]
        swap                                     // Mem[A] = caller FP; D = next FP[2]
        swapa                                    // A=&bucket, A2 = new FP  [2]
        wrd                                      // *A = next FP (unlocks bucket)[2]
        swapa                                    // A = new FP, A2 = &bucket[2]
        jl        %tn%11                         // jump to done            [6]
%tn%14:
        bdz       %tn%10                         // bucket was empty, have to malloc a frame[4]
        jmp       %tn%12                         // *bucket was negative, retry frame cache[4]
%tn%10:
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
%tn%15:
        lit       8                              // D = 8                   [4]
        addms                                    // *A += D; D = *A         [2]
        bdz       %tn%17                         // branch if unlocked      [4]
        muma1     6                              //  D &= 0x7F              [4]
%tn%16:
        aaim      0                              // A += 0 (busy no-op)     [3]
        bnzd      %tn%16                         // branch if D != 0        [4]
        jmp       %tn%15                         // retry lock              [4]
%tn%17:
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
%tn%11:
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
        ete       2, 12                          // E12 = E2                [4]
        lsr       1                              // D = 0x1                 [3]
        cmpe      12                             // D ?= E12                [3]
        td1       38, %"block%1"                 // E sgt D                 [5]
        jl        %._crit_edge                   //                         [6]
%"block%1":                                      // block                   (398)
        lit16     16355                          // D = 0x3FE3              [6]
        sill      13107                          // D = 0x3FE33333          [6]
        sill      13107                          // D = 0x3FE333333333      [6]
        sill      13107                          // D = 0x3FE3333333333333  [6]
        dte       13                             // E13 = D                 [2]
        lit16     1023                           // D = 0x3FF               [6]
        sllc      52                             // D = 0x3FF0000000000000  [4]
        dte       14                             // E14 = D                 [2]
%"block%2":                                      // block                   (436)
        etd       14                             // D = E14                 [2]
        fpadde    13                             // D += E13                [4]
        dte       1                              // E1 = D                  [2]
        lit16     511                            // D = 0x1FF               [6]
        sllc      53                             // D = 0x3FE0000000000000  [4]
        fpmule    1                              // D *= E1                 [4]
        dte       15                             // E15 = D                 [2]
        lit       2                              // D = 0x2                 [4]
        dte       1                              // E1 = D                  [2]
        ete       15, 3                          // E3 = E15                [4]
%"block%15":                                     // block                   (470)
        etd       3                              // D = E3                  [2]
        fpmule    15                             // D *= E15                [4]
        dte       3                              // E3 = D                  [2]
        eta       1                              // A = E1                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       2                              // E2 = A                  [2]
        etd       12                             // D = E12                 [2]
        xore      1                              // D ^= E1                 [3]
        bdz       %"block%7"                     //                         [4]
%._crit_edge2:                                   // block                   (494)
        ete       2, 1                           // E1 = E2                 [4]
        jmp       %"block%15"                    //                         [4]
%"block%7":                                      // block                   (502)
        lit16     -1025                          // D = 0xFFFFFFFFFFFFFBFF  [6]
        sllc      52                             // D = 0xBFF0000000000000  [4]
        fpadde    15                             // D += E15                [4]
        fpadde    3                              // D += E3                 [4]
        dte       2                              // E2 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        srlc      51                             // shift bit 51(olt) to 0  [4]
        muma1     0                              // D &= 1                  [4]
        dte       1                              // E1 = D                  [2]
        etd       1                              // D = E1                  [2]
        td0       0, %tn%7                       // if LSB is clear         [5]
%tn%6:                                           // block                   (545)
        etd       1                              // D = E1                  [2]
        td1       0, %tn%3                       // if LSB is set           [5]
        jmp       %tn%5                          //                         [4]
%tn%7:                                           // block                   (556)
        ete       15, 13                         // E13 = E15               [4]
        etd       1                              // D = E1                  [2]
        td0       0, %tn%5                       // if LSB is clear         [5]
%tn%3:                                           // block                   (567)
        ete       15, 14                         // E14 = E15               [4]
%tn%5:                                           // block                   (571)
        ldc       @fabs                          // D = @fabs               [15]
        jale      1                              // E2 = call @fabs         [3]
        lit16     16208                          // D = 0x3F50              [6]
        sill      25165                          // D = 0x3F50624D          [6]
        sill      54001                          // D = 0x3F50624DD2F1      [6]
        sill      43516                          // D = 0x3F50624DD2F1A9FC  [6]
        cmpe      2                              // D ?= E2                 [3]
        td0       51, %"block%21"                // D uge E                 [5]
        jl        %"block%2"                     //                         [6]
%._crit_edge:                                    // block                   (627)
        lit16     511                            // D = 0x1FF               [6]
        sllc      53                             // D = 0x3FE0000000000000  [4]
        dte       15                             // E15 = D                 [2]
%"block%21":                                     // block                   (639)
        eta       12                             // A = E12                 [2]
        bnaz      %tn%2                          //                         [4]
%tn%0:                                           // block                   (645)
        lsr       0                              // D = 0x0                 [3]
        dte       15                             // E15 = D                 [2]
%tn%2:                                           // block                   (650)
        ete       15, 2                          // E2 = E15                [4]
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
%tn%9:                                           // block                   (694)
        eta       0                              // A = newFP               [2]
        lde       0                              // E0 = oldFP              [3]
        ate       11                             // E11 = newFP             [2]
        ldr       @_frame_buckets_+0             // D = bucket              [24]
        dtd2                                     // D2 = bucket             [2]
        dta                                      // A = bucket              [2]
%tn%18:
        ld                                       // D = *bucket             [1]
        bdgtz     %tn%19                         // bucket valid?           [4]
        bdz       %tn%19                         // bucket empty?           [4]
        jmp       %tn%18                         // bucket locked           [4]
%tn%19:
        eta       11                             // A = newFP               [2]
        std                                      // *fp = free list         [2]
        swapd                                    //                         [2]
        dta                                      // A = bucket              [2]
        swapd                                    //                         [2]
        cas       11                             // bucket changed?         [3]
        bnz       %tn%18                         // if bucket changed, try again[4]
        jmpe      1                              // return                  [3]
        .function_end                            // function size           (762)
        .extern   @fabs
        .global   @parse_args
        .text
@parse_args:
        .function_begin                          // entry                   (0)
        ldr       @_frame_buckets_+8             // D = &bucket             [24]
        dta                                      // A = &bucket             [2]
        ata2                                     // A2 = &bucket            [2]
%tn%12:
        lsr       3                              // D = -1                  [3]
        swap                                     // lock bucket & put cur bucket value in D[2]
        bdgtz     %tn%13                         // won lock, jump to that  [4]
        jmp       %tn%14                         // didn't win lock, jump to that[4]
%tn%13:
        dta                                      // A = new FP              [2]
        etd       0                              // D = caller's FP         [2]
        ate       0                              // E0 = new FP             [2]
        swap                                     // Mem[A] = caller FP; D = next FP[2]
        swapa                                    // A=&bucket, A2 = new FP  [2]
        wrd                                      // *A = next FP (unlocks bucket)[2]
        swapa                                    // A = new FP, A2 = &bucket[2]
        jl        %tn%11                         // jump to done            [6]
%tn%14:
        bdz       %tn%10                         // bucket was empty, have to malloc a frame[4]
        jmp       %tn%12                         // *bucket was negative, retry frame cache[4]
%tn%10:
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
%tn%15:
        lit       8                              // D = 8                   [4]
        addms                                    // *A += D; D = *A         [2]
        bdz       %tn%17                         // branch if unlocked      [4]
        muma1     6                              //  D &= 0x7F              [4]
%tn%16:
        aaim      0                              // A += 0 (busy no-op)     [3]
        bnzd      %tn%16                         // branch if D != 0        [4]
        jmp       %tn%15                         // retry lock              [4]
%tn%17:
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
        aaim      1                              // A += 8                  [3]
        lde       2                              // E2 = *A                 [3]
        aaim      1                              // A += 8                  [3]
        lde       3                              // E3 = *A                 [3]
        dta                                      // A = &reg save area      [2]
        lsr       0                              // D = 0x0                 [3]
        std                                      // unlock reg save area    [2]
%tn%11:
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
        ete       3, 13                          // E13 = E3                [4]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        ate       14                             // E14 = A                 [2]
        ldg       @train_data_path               // D = @train_data_path    [24]
        dta                                      // A = D                   [2]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @test_feature_path             // D = @test_feature_path  [24]
        dta                                      // A = D                   [2]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @non_standard_classes          // D = @non_standard_classes[24]
        dta                                      // A = D                   [2]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @threads_per_cluster           // D = @threads_per_cluster[24]
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @samples_per_cluster           // D = @samples_per_cluster[24]
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        wrd                                      // *A = D                  [2]
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        sllc      32                             // D <<= 32                [4]
        srac      32                             // D >>= 32                [4]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       1                              // D = 0x1                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       26, %"block%4"                 // E sgt D                 [5]
        jl        %"block%202"                   //                         [6]
%"block%4":                                      // block                   (612)
        lsr       1                              // D = 0x1                 [3]
        dte       15                             // E15 = D                 [2]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
%"block%5":                                      // block                   (653)
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        ate       12                             // E12 = A                 [2]
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str                          // D = @.str               [24]
        dte       3                              // E3 = D                  [2]
        ldc       @strcmp                        // D = @strcmp             [15]
        jale      1                              // E2 = call @strcmp       [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       24, %"block%14"                // D eq E                  [5]
        jmp       %"block%22"                    //                         [4]
%"block%14":                                     // block                   (728)
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        addl      8                              // D += 8                  [6]
        dpeta     13                             // A = D + E13             [3]
        ate       12                             // E12 = A                 [2]
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldc       @strlen                        // D = @strlen             [15]
        jale      1                              // E2 = call @strlen       [3]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // E2 = call @malloc       [3]
        ldg       @train_data_path               // D = @train_data_path    [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2]
        eta       12                             // A = E12                 [2]
        lde       3                              // E3 = *A                 [3]
        ldc       @strcpy                        // D = @strcpy             [15]
        jale      1                              // E2 = call @strcpy       [3]
        jl        %"block%193"                   //                         [6]
%"block%22":                                     // block                   (845)
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.1                        // D = @.str.1             [24]
        dte       3                              // E3 = D                  [2]
        ldc       @strcmp                        // D = @strcmp             [15]
        jale      1                              // E2 = call @strcmp       [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       24, %"block%26"                // D eq E                  [5]
        jmp       %"block%34"                    //                         [4]
%"block%26":                                     // block                   (909)
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        addl      8                              // D += 8                  [6]
        dpeta     13                             // A = D + E13             [3]
        ate       12                             // E12 = A                 [2]
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldc       @strlen                        // D = @strlen             [15]
        jale      1                              // E2 = call @strlen       [3]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // E2 = call @malloc       [3]
        ldg       @test_feature_path             // D = @test_feature_path  [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2]
        eta       12                             // A = E12                 [2]
        lde       3                              // E3 = *A                 [3]
        ldc       @strcpy                        // D = @strcpy             [15]
        jale      1                              // E2 = call @strcpy       [3]
        jl        %"block%193"                   //                         [6]
%"block%34":                                     // block                   (1026)
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.2                        // D = @.str.2             [24]
        dte       3                              // E3 = D                  [2]
        ldc       @strcmp                        // D = @strcmp             [15]
        jale      1                              // E2 = call @strcmp       [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td0       24, %"block%44"                // D ne E                  [5]
        jl        %"block%38"                    //                         [6]
%"block%44":                                     // block                   (1092)
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.3                        // D = @.str.3             [24]
        dte       3                              // E3 = D                  [2]
        ldc       @strcmp                        // D = @strcmp             [15]
        jale      1                              // E2 = call @strcmp       [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       24, %"block%48"                // D eq E                  [5]
        jmp       %"block%54"                    //                         [4]
%"block%48":                                     // block                   (1156)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        lde       2                              // E2 = *A                 [3]
        ldc       @atoi                          // D = @atoi               [15]
        jale      1                              // E2 = call @atoi         [3]
        ete       2, 1                           // E1 = E2                 [4]
        ldg       @train_sample_count            // D = @train_sample_count [24]
        dte       2                              // E2 = D                  [2]
        etd       1                              // D = E1                  [2]
        sllc      32                             // D <<= 32                [4]
        srac      32                             // D >>= 32                [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        jl        %"block%193"                   //                         [6]
%"block%54":                                     // block                   (1259)
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.4                        // D = @.str.4             [24]
        dte       3                              // E3 = D                  [2]
        ldc       @strcmp                        // D = @strcmp             [15]
        jale      1                              // E2 = call @strcmp       [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       24, %"block%58"                // D eq E                  [5]
        jl        %"block%69"                    //                         [6]
%"block%58":                                     // block                   (1325)
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        addl      8                              // D += 8                  [6]
        dpeta     13                             // A = D + E13             [3]
        lde       2                              // E2 = *A                 [3]
        ldc       @atoi                          // D = @atoi               [15]
        jale      1                              // E2 = call @atoi         [3]
        ldg       @class1                        // D = @class1             [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      32                             // D <<= 32                [4]
        srac      32                             // D >>= 32                [4]
        wrd                                      // *A = D                  [2]
        eta       15                             // A = E15                 [2]
        aaimb     2                              // A += 2                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        lde       2                              // E2 = *A                 [3]
        ldc       @atoi                          // D = @atoi               [15]
        jale      1                              // E2 = call @atoi         [3]
        ldg       @class2                        // D = @class2             [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      32                             // D <<= 32                [4]
        srac      32                             // D >>= 32                [4]
        wrd                                      // *A = D                  [2]
        ldg       @non_standard_classes          // D = @non_standard_classes[24]
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        wrd                                      // *A = D                  [2]
        jl        %"block%193"                   //                         [6]
%"block%69":                                     // block                   (1511)
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.5                        // D = @.str.5             [24]
        dte       3                              // E3 = D                  [2]
        ldc       @strcmp                        // D = @strcmp             [15]
        jale      1                              // E2 = call @strcmp       [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       24, %"block%73"                // D eq E                  [5]
        jmp       %"block%79"                    //                         [4]
%"block%73":                                     // block                   (1575)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        lde       2                              // E2 = *A                 [3]
        ldc       @atoi                          // D = @atoi               [15]
        jale      1                              // E2 = call @atoi         [3]
        ete       2, 1                           // E1 = E2                 [4]
        ldg       @epochs                        // D = @epochs             [24]
        dte       2                              // E2 = D                  [2]
        etd       1                              // D = E1                  [2]
        sllc      32                             // D <<= 32                [4]
        srac      32                             // D >>= 32                [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        jl        %"block%193"                   //                         [6]
%"block%79":                                     // block                   (1678)
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.6                        // D = @.str.6             [24]
        dte       3                              // E3 = D                  [2]
        ldc       @strcmp                        // D = @strcmp             [15]
        jale      1                              // E2 = call @strcmp       [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       24, %"block%83"                // D eq E                  [5]
        jmp       %"block%89"                    //                         [4]
%"block%83":                                     // block                   (1742)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        lde       2                              // E2 = *A                 [3]
        ldc       @atoi                          // D = @atoi               [15]
        jale      1                              // E2 = call @atoi         [3]
        ete       2, 1                           // E1 = E2                 [4]
        ldg       @total_train_points            // D = @total_train_points [24]
        dte       2                              // E2 = D                  [2]
        etd       1                              // D = E1                  [2]
        sllc      32                             // D <<= 32                [4]
        srac      32                             // D >>= 32                [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        jl        %"block%193"                   //                         [6]
%"block%89":                                     // block                   (1845)
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.7                        // D = @.str.7             [24]
        dte       3                              // E3 = D                  [2]
        ldc       @strcmp                        // D = @strcmp             [15]
        jale      1                              // E2 = call @strcmp       [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       24, %"block%93"                // D eq E                  [5]
        jmp       %"block%99"                    //                         [4]
%"block%93":                                     // block                   (1909)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        lde       2                              // E2 = *A                 [3]
        ldc       @atoi                          // D = @atoi               [15]
        jale      1                              // E2 = call @atoi         [3]
        ete       2, 1                           // E1 = E2                 [4]
        ldg       @test_sample_count             // D = @test_sample_count  [24]
        dte       2                              // E2 = D                  [2]
        etd       1                              // D = E1                  [2]
        sllc      32                             // D <<= 32                [4]
        srac      32                             // D >>= 32                [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        jl        %"block%193"                   //                         [6]
%"block%99":                                     // block                   (2012)
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.8                        // D = @.str.8             [24]
        dte       3                              // E3 = D                  [2]
        ldc       @strcmp                        // D = @strcmp             [15]
        jale      1                              // E2 = call @strcmp       [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       24, %"block%103"               // D eq E                  [5]
        jl        %"block%111"                   //                         [6]
%"block%103":                                    // block                   (2078)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        lde       2                              // E2 = *A                 [3]
        ldc       @atoi                          // D = @atoi               [15]
        jale      1                              // E2 = call @atoi         [3]
        ete       2, 1                           // E1 = E2                 [4]
        ldg       @total_test_points             // D = @total_test_points  [24]
        dte       2                              // E2 = D                  [2]
        ldg       @test_sample_count             // D = @test_sample_count  [24]
        dta                                      // A = D                   [2]
        etd       1                              // D = E1                  [2]
        sllc      32                             // D <<= 32                [4]
        srac      32                             // D >>= 32                [4]
        add                                      // D += *A                 [2]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        jl        %"block%193"                   //                         [6]
%"block%111":                                    // block                   (2209)
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.9                        // D = @.str.9             [24]
        dte       3                              // E3 = D                  [2]
        ldc       @strcmp                        // D = @strcmp             [15]
        jale      1                              // E2 = call @strcmp       [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       24, %"block%115"               // D eq E                  [5]
        jmp       %"block%121"                   //                         [4]
%"block%115":                                    // block                   (2273)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        lde       2                              // E2 = *A                 [3]
        ldc       @atoi                          // D = @atoi               [15]
        jale      1                              // E2 = call @atoi         [3]
        ete       2, 1                           // E1 = E2                 [4]
        ldg       @threads_per_cluster           // D = @threads_per_cluster[24]
        dte       2                              // E2 = D                  [2]
        etd       1                              // D = E1                  [2]
        sllc      32                             // D <<= 32                [4]
        srac      32                             // D >>= 32                [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        jl        %"block%193"                   //                         [6]
%"block%121":                                    // block                   (2376)
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.10                       // D = @.str.10            [24]
        dte       3                              // E3 = D                  [2]
        ldc       @strcmp                        // D = @strcmp             [15]
        jale      1                              // E2 = call @strcmp       [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       24, %"block%125"               // D eq E                  [5]
        jl        %"block%133"                   //                         [6]
%"block%125":                                    // block                   (2442)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.11                       // D = @.str.11            [24]
        dte       3                              // E3 = D                  [2]
        etd       14                             // D = E14                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        ldc       @sscanf                        // D = @sscanf             [15]
        jale      1                              // E2 = call @sscanf       [3]
        ldg       @eta                           // D = @eta                [24]
        dte       2                              // E2 = D                  [2]
        eta       14                             // A = E14                 [2]
        lde       1                              // E1 = *A                 [3]
        lit16     1047                           // D = 0x417               [6]
        sllc      52                             // D = 0x4170000000000000  [4]
        fpmule    1                              // D *= E1                 [4]
        fptoint                                  // D = int(D)              [3]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        jl        %"block%193"                   //                         [6]
%"block%133":                                    // block                   (2588)
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.12                       // D = @.str.12            [24]
        dte       3                              // E3 = D                  [2]
        ldc       @strcmp                        // D = @strcmp             [15]
        jale      1                              // E2 = call @strcmp       [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       24, %"block%137"               // D eq E                  [5]
        jl        %"block%145"                   //                         [6]
%"block%137":                                    // block                   (2654)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.11                       // D = @.str.11            [24]
        dte       3                              // E3 = D                  [2]
        etd       14                             // D = E14                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        ldc       @sscanf                        // D = @sscanf             [15]
        jale      1                              // E2 = call @sscanf       [3]
        ldg       @gamma                         // D = @gamma              [24]
        dte       2                              // E2 = D                  [2]
        eta       14                             // A = E14                 [2]
        lde       1                              // E1 = *A                 [3]
        lit16     1047                           // D = 0x417               [6]
        sllc      52                             // D = 0x4170000000000000  [4]
        fpmule    1                              // D *= E1                 [4]
        fptoint                                  // D = int(D)              [3]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        jl        %"block%193"                   //                         [6]
%"block%145":                                    // block                   (2800)
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.13                       // D = @.str.13            [24]
        dte       3                              // E3 = D                  [2]
        ldc       @strcmp                        // D = @strcmp             [15]
        jale      1                              // E2 = call @strcmp       [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       24, %"block%149"               // D eq E                  [5]
        jmp       %"block%155"                   //                         [4]
%"block%149":                                    // block                   (2864)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        lde       2                              // E2 = *A                 [3]
        ldc       @atoi                          // D = @atoi               [15]
        jale      1                              // E2 = call @atoi         [3]
        ete       2, 1                           // E1 = E2                 [4]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dte       2                              // E2 = D                  [2]
        etd       1                              // D = E1                  [2]
        sllc      32                             // D <<= 32                [4]
        srac      32                             // D >>= 32                [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        jl        %"block%193"                   //                         [6]
%"block%155":                                    // block                   (2967)
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.14                       // D = @.str.14            [24]
        dte       3                              // E3 = D                  [2]
        ldc       @strcmp                        // D = @strcmp             [15]
        jale      1                              // E2 = call @strcmp       [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       24, %"block%159"               // D eq E                  [5]
        jmp       %"block%165"                   //                         [4]
%"block%159":                                    // block                   (3031)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        lde       2                              // E2 = *A                 [3]
        ldc       @atoi                          // D = @atoi               [15]
        jale      1                              // E2 = call @atoi         [3]
        ete       2, 1                           // E1 = E2                 [4]
        ldg       @test_id                       // D = @test_id            [24]
        dte       2                              // E2 = D                  [2]
        etd       1                              // D = E1                  [2]
        sllc      32                             // D <<= 32                [4]
        srac      32                             // D >>= 32                [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        jl        %"block%193"                   //                         [6]
%"block%165":                                    // block                   (3134)
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.15                       // D = @.str.15            [24]
        dte       3                              // E3 = D                  [2]
        ldc       @strcmp                        // D = @strcmp             [15]
        jale      1                              // E2 = call @strcmp       [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       24, %"block%169"               // D eq E                  [5]
        jmp       %"block%175"                   //                         [4]
%"block%169":                                    // block                   (3198)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        lde       2                              // E2 = *A                 [3]
        ldc       @atoi                          // D = @atoi               [15]
        jale      1                              // E2 = call @atoi         [3]
        ete       2, 1                           // E1 = E2                 [4]
        ldg       @update_period                 // D = @update_period      [24]
        dte       2                              // E2 = D                  [2]
        etd       1                              // D = E1                  [2]
        sllc      32                             // D <<= 32                [4]
        srac      32                             // D >>= 32                [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        jl        %"block%193"                   //                         [6]
%"block%175":                                    // block                   (3301)
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.16                       // D = @.str.16            [24]
        dte       3                              // E3 = D                  [2]
        ldc       @strcmp                        // D = @strcmp             [15]
        jale      1                              // E2 = call @strcmp       [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td0       24, %"block%179"               // D ne E                  [5]
%._crit_edge54:                                  // block                   (3361)
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        jl        %"block%193"                   //                         [6]
%"block%179":                                    // block                   (3379)
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.17                       // D = @.str.17            [24]
        dte       3                              // E3 = D                  [2]
        ldc       @strcmp                        // D = @strcmp             [15]
        jale      1                              // E2 = call @strcmp       [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td0       24, %"block%183"               // D ne E                  [5]
        jl        %._crit_edge55                 //                         [6]
%"block%183":                                    // block                   (3445)
        eta       12                             // A = E12                 [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.18                       // D = @.str.18            [24]
        dte       3                              // E3 = D                  [2]
        ldc       @strcmp                        // D = @strcmp             [15]
        jale      1                              // E2 = call @strcmp       [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       24, %"block%187"               // D eq E                  [5]
        jl        %"block%193"                   //                         [6]
%"block%187":                                    // block                   (3511)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        lde       2                              // E2 = *A                 [3]
        ldc       @atoi                          // D = @atoi               [15]
        jale      1                              // E2 = call @atoi         [3]
        ete       2, 1                           // E1 = E2                 [4]
        ldg       @clock_rate                    // D = @clock_rate         [24]
        dte       2                              // E2 = D                  [2]
        etd       1                              // D = E1                  [2]
        sllc      32                             // D <<= 32                [4]
        srac      32                             // D >>= 32                [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        jmp       %"block%193"                   //                         [4]
%._crit_edge55:                                  // block                   (3624)
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        jmp       %"block%193"                   //                         [4]
%"block%38":                                     // block                   (3640)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        lde       2                              // E2 = *A                 [3]
        ldc       @atoi                          // D = @atoi               [15]
        jale      1                              // E2 = call @atoi         [3]
        ete       2, 1                           // E1 = E2                 [4]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dte       2                              // E2 = D                  [2]
        etd       1                              // D = E1                  [2]
        sllc      32                             // D <<= 32                [4]
        srac      32                             // D >>= 32                [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
%"block%193":                                    // block                   (3737)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      15                             // D ?= E15                [3]
        td0       39, %"block%200"               // E sge D                 [5]
        jl        %"block%5"                     //                         [6]
%"block%200":                                    // block                   (3766)
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        bdz       %"block%202"                   //                         [4]
        jmp       %"block%206"                   //                         [4]
%"block%202":                                    // block                   (3782)
        ldg       @.str.19                       // D = @.str.19            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        ldg       @stdout                        // D = @stdout             [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lsr       3                              // D = -1                  [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%206":                                    // block                   (3896)
        ldg       @node_count                    // D = @node_count         [24]
        dte       2                              // E2 = D                  [2]
        lsr       15                             // D = num_nodes()         [3]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        ldg       @using_clusters                // D = @using_clusters     [24]
        dte       2                              // E2 = D                  [2]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       3                              // E3 = *A                 [3] **** spill related
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        ldg       @.str.20                       // D = @.str.20            [24]
        dte       2                              // E2 = D                  [2]
        ldg       @using_clusters                // D = @using_clusters     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        ldg       @stdout                        // D = @stdout             [24]
        dta                                      // A = D                   [2]
        lde       14                             // E14 = *A                [3]
        ete       14, 2                          // E2 = E14                [4]
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ldg       @multi_file_load               // D = @multi_file_load    [24]
        dte       2                              // E2 = D                  [2]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       3                              // E3 = *A                 [3] **** spill related
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        ldg       @.str.21                       // D = @.str.21            [24]
        dte       2                              // E2 = D                  [2]
        ldg       @multi_file_load               // D = @multi_file_load    [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        ete       14, 2                          // E2 = E14                [4]
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        inttofp   1                              // D = double(D)           [3]
        dte       1                              // E1 = D                  [2]
        ldg       @train_sample_count            // D = @train_sample_count [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        inttofp   1                              // D = double(D)           [3]
        fpdive    1                              // D /= E1                 [4]
        dte       1                              // E1 = D                  [2]
        lit16     4093                           // D = 0xFFD               [6]
        sllc      50                             // D = 0x3FF4000000000000  [4]
        fpmule    1                              // D *= E1                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @ceil                          // D = @ceil               [15]
        jale      1                              // E2 = call @ceil         [3]
        ete       2, 1                           // E1 = E2                 [4]
        ldg       @samples_per_cluster           // D = @samples_per_cluster[24]
        dte       2                              // E2 = D                  [2]
        etd       1                              // D = E1                  [2]
        fptoint                                  // D = int(D)              [3]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        bdnz      %"block%224"                   //                         [4]
        jmp       %"block%228"                   //                         [4]
%"block%224":                                    // block                   (4455)
        ldg       @.str.22                       // D = @.str.22            [24]
        dte       2                              // E2 = D                  [2]
        ldg       @samples_per_cluster           // D = @samples_per_cluster[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        ete       14, 2                          // E2 = E14                [4]
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
%"block%228":                                    // block                   (4555)
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        lde       12                             // E12 = *A                [3]
        lsr       1                              // D = 0x1                 [3]
        cmpe      12                             // D ?= E12                [3]
        td1       38, %"block%231"               // E sgt D                 [5]
        jl        %._crit_edge60                 //                         [6]
%"block%231":                                    // block                   (4601)
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lit16     16355                          // D = 0x3FE3              [6]
        sill      13107                          // D = 0x3FE33333          [6]
        sill      13107                          // D = 0x3FE333333333      [6]
        sill      13107                          // D = 0x3FE3333333333333  [6]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     1023                           // D = 0x3FF               [6]
        sllc      52                             // D = 0x3FF0000000000000  [4]
        dte       13                             // E13 = D                 [2]
%"block%232":                                    // block                   (4646)
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        fpadde    13                             // D += E13                [4]
        dte       1                              // E1 = D                  [2]
        lit16     511                            // D = 0x1FF               [6]
        sllc      53                             // D = 0x3FE0000000000000  [4]
        fpmule    1                              // D *= E1                 [4]
        dte       15                             // E15 = D                 [2]
        lit       2                              // D = 0x2                 [4]
        dte       1                              // E1 = D                  [2]
        ete       15, 3                          // E3 = E15                [4]
%"block%245":                                    // block                   (4686)
        etd       3                              // D = E3                  [2]
        fpmule    15                             // D *= E15                [4]
        dte       3                              // E3 = D                  [2]
        eta       1                              // A = E1                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       2                              // E2 = A                  [2]
        etd       12                             // D = E12                 [2]
        xore      1                              // D ^= E1                 [3]
        bdz       %"block%237"                   //                         [4]
        jl        %._crit_edge62                 //                         [6]
%"block%237":                                    // block                   (4716)
        lit16     -1025                          // D = 0xFFFFFFFFFFFFFBFF  [6]
        sllc      52                             // D = 0xBFF0000000000000  [4]
        fpadde    15                             // D += E15                [4]
        fpadde    3                              // D += E3                 [4]
        dte       2                              // E2 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        srlc      51                             // shift bit 51(olt) to 0  [4]
        muma1     0                              // D &= 1                  [4]
        dte       1                              // E1 = D                  [2]
        etd       1                              // D = E1                  [2]
        td0       0, %tn%7                       // if LSB is clear         [5]
%tn%6:                                           // block                   (4759)
        etd       1                              // D = E1                  [2]
        td1       0, %tn%3                       // if LSB is set           [5]
        jmp       %tn%5                          //                         [4]
%tn%7:                                           // block                   (4770)
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        etd       1                              // D = E1                  [2]
        td0       0, %tn%5                       // if LSB is clear         [5]
%tn%3:                                           // block                   (4788)
        ete       15, 13                         // E13 = E15               [4]
%tn%5:                                           // block                   (4792)
        ldc       @fabs                          // D = @fabs               [15]
        jale      1                              // E2 = call @fabs         [3]
        lit16     16208                          // D = 0x3F50              [6]
        sill      25165                          // D = 0x3F50624D          [6]
        sill      54001                          // D = 0x3F50624DD2F1      [6]
        sill      43516                          // D = 0x3F50624DD2F1A9FC  [6]
        cmpe      2                              // D ?= E2                 [3]
        td0       51, %"block%251"               // D uge E                 [5]
        jl        %"block%232"                   //                         [6]
%"block%251":                                    // block                   (4848)
        lit16     1047                           // D = 0x417               [6]
        sllc      52                             // D = 0x4170000000000000  [4]
        fpmule    15                             // D *= E15                [4]
        fptoint                                  // D = int(D)              [3]
        dte       3                              // E3 = D                  [2]
        jmp       %"block%254"                   //                         [4]
%._crit_edge62:                                  // block                   (4871)
        ete       2, 1                           // E1 = E2                 [4]
        jl        %"block%245"                   //                         [6]
%._crit_edge60:                                  // block                   (4881)
        lsr       1                              // D = 0x1                 [3]
        sllc      23                             // D = 0x800000            [4]
        dte       3                              // E3 = D                  [2]
%"block%254":                                    // block                   (4890)
        eta       12                             // A = E12                 [2]
        bnaz      %tn%2                          //                         [4]
%tn%0:                                           // block                   (4896)
        lsr       0                              // D = 0x0                 [3]
        dte       3                              // E3 = D                  [2]
%tn%2:                                           // block                   (4901)
        ldg       @beta                          // D = @beta               [24]
        dte       2                              // E2 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        ldg       @beta                          // D = @beta               [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        lsr       1                              // D = 0x1                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       38, %"block%261"               // E sgt D                 [5]
%._crit_edge63:                                  // block                   (5014)
        ete       1, 3                           // E3 = E1                 [4]
        jmp       %"block%262"                   //                         [4]
%"block%261":                                    // block                   (5022)
        lsr       1                              // D = 0x1                 [3]
        dte       4                              // E4 = D                  [2]
        ete       1, 3                           // E3 = E1                 [4]
%"block%269":                                    // block                   (5031)
        etd       1                              // D = E1                  [2]
        multe     3                              // D *= E3                 [3]
        srac      24                             // D >>= 24                [4]
        dte       3                              // E3 = D                  [2]
        eta       4                              // A = E4                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       4                              // E4 = A                  [2]
        etd       2                              // D = E2                  [2]
        xore      4                              // D ^= E4                 [3]
        bdnz      %"block%269"                   //                         [4]
%"block%262":                                    // block                   (5058)
        ldg       @lambda                        // D = @lambda             [24]
        dte       2                              // E2 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        ldg       @one_min_lambda                // D = @one_min_lambda     [24]
        dte       2                              // E2 = D                  [2]
        ldg       @lambda                        // D = @lambda             [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        sube      1                              // D -= E1                 [3]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        ldg       @.str.23                       // D = @.str.23            [24]
        dte       2                              // E2 = D                  [2]
        ldg       @update_period                 // D = @update_period      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        ete       14, 2                          // E2 = E14                [4]
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
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
%tn%9:                                           // block                   (5327)
        eta       0                              // A = newFP               [2]
        lde       0                              // E0 = oldFP              [3]
        ate       11                             // E11 = newFP             [2]
        ldr       @_frame_buckets_+8             // D = bucket              [24]
        dtd2                                     // D2 = FP                 [2]
        dta                                      // A = D                   [2]
%tn%18:
        ld                                       // D = *bucket             [1]
        bdgtz     %tn%19                         // bucket valid?           [4]
        bdz       %tn%19                         // bucket empty?           [4]
        jmp       %tn%18                         // bucket locked           [4]
%tn%19:
        eta       11                             // A = newFP               [2]
        std                                      // *fp = free list         [2]
        swapd                                    //                         [2]
        dta                                      // A = D                   [2]
        swapd                                    //                         [2]
        cas       11                             // bucket changed?         [3]
        bnz       %tn%18                         // if bucket changed, try again[4]
        jmpe      1                              // return                  [3]
        .function_end                            // function size           (5395)
        .extern   @strcmp
        .extern   @malloc
        .extern   @strlen
        .extern   @strcpy
        .extern   @atoi
        .extern   @mw_replicated_init
        .extern   @sscanf
        .extern   @printf
        .extern   @fflush
        .extern   @exit
        .extern   @ceil
        .global   @node_load_from_n0
        .text
@node_load_from_n0:
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
        aaim      1                              // A += 8                  [3]
        ste       2                              // *A = E2                 [3]
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
        aaim      1                              // A += 8                  [3]
        lde       2                              // E2 = *A                 [3]
        dta                                      // A = &reg save area      [2]
        lsr       0                              // D = 0x0                 [3]
        std                                      // unlock reg save area    [2]
%tn%2:
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
        ete       2, 13                          // E13 = E2                [4]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        inttofp   1                              // D = double(D)           [3]
        dte       1                              // E1 = D                  [2]
        lit16     16369                          // D = 0x3FF1              [6]
        sill      39321                          // D = 0x3FF19999          [6]
        sill      39321                          // D = 0x3FF199999999      [6]
        sill      39322                          // D = 0x3FF199999999999A  [6]
        dte       2                              // E2 = D                  [2]
        ldg       @total_train_points            // D = @total_train_points [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        inttofp   1                              // D = double(D)           [3]
        fpdive    1                              // D /= E1                 [4]
        fpmule    2                              // D *= E2                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @ceil                          // D = @ceil               [15]
        jale      1                              // E2 = call @ceil         [3]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        fptoint                                  // D = int(D)              [3]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       1                              // D = 0x1                 [3]
        sllc      27                             // D = 0x8000000           [4]
        dte       2                              // E2 = D                  [2]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // E2 = call @malloc       [3]
        ldg       @data_read_buffer              // D = @data_read_buffer   [24]
        dta                                      // A = D                   [2]
        bita      %tn%9                          // A = *A                  [4]
%tn%9:
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2]
        ldg       @data_read_buffer              // D = @data_read_buffer   [24]
        dta                                      // A = D                   [2]
        bita      %tn%10                         // A = *A                  [4]
%tn%10:
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       14                             // E14 = *A                [3]
        ldg       @train_data_path               // D = @train_data_path    [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldc       @strlen                        // D = @strlen             [15]
        jale      1                              // E2 = call @strlen       [3]
        lit       10                             // D = 0xA                 [4]
        dpeta     2                              // A = D + E2              [3]
        ate       2                              // E2 = A                  [2]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // E2 = call @malloc       [3]
        ete       2, 12                          // E12 = E2                [4]
        ete       12, 2                          // E2 = E12                [4]
        ldg       @.str.24                       // D = @.str.24            [24]
        dte       3                              // E3 = D                  [2]
        ldg       @train_data_path               // D = @train_data_path    [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @sprintf                       // D = @sprintf            [15]
        jale      1                              // E2 = call @sprintf      [3]
        ldg       @.str.25                       // D = @.str.25            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        etd       12                             // D = E12                 [2]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        ldg       @stdout                        // D = @stdout             [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ete       12, 2                          // E2 = E12                [4]
        ldg       @.str.26                       // D = @.str.26            [24]
        dte       3                              // E3 = D                  [2]
        ldc       @fopen                         // D = @fopen              [15]
        jale      1                              // E2 = call @fopen        [3]
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        bdz       %"block%27"                    //                         [4]
        jmp       %"block%29"                    //                         [4]
%"block%27":                                     // block                   (1003)
        ldg       @.str.27                       // D = @.str.27            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%29":                                     // block                   (1070)
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       3                              // E3 = D                  [2]
        lit       2                              // D = 0x2                 [4]
        dte       4                              // E4 = D                  [2]
        ldc       @fseek                         // D = @fseek              [15]
        jale      1                              // E2 = call @fseek        [3]
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @ftell                         // D = @ftell              [15]
        jale      1                              // E2 = call @ftell        [3]
        ete       2, 15                          // E15 = E2                [4]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        bdgtz     %tn%11                         // if D > 0                [4]
        bdz       %tn%12                         // if D == 0               [4]
        addl      7                              // D += 8                  [6]
%tn%11:
        srac      3                              // D >>= 3                 [4]
%tn%12:
        wrd                                      // *A = D                  [2] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       3                              // E3 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        dte       4                              // E4 = D                  [2]
        ldc       @fseek                         // D = @fseek              [15]
        jale      1                              // E2 = call @fseek        [3]
        etd       15                             // D = E15                 [2]
        bdgtz     %tn%13                         // if D > 0                [4]
        bdz       %tn%14                         // if D == 0               [4]
        lit       31                             // D = 0x1F                [4]
        adde      15                             // D += E15                [3]
%tn%13:
        srac      5                              // D >>= 5                 [4]
%tn%14:
        dte       12                             // E12 = D                 [2]
        ldg       @.str.28                       // D = @.str.28            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        etd       12                             // D = E12                 [2]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      12                             // D ?= E12                [3]
        td0       39, %"block%38"                // E sge D                 [5]
        jmp       %"block%41"                    //                         [4]
%"block%38":                                     // block                   (1341)
        ldg       @.str.29                       // D = @.str.29            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        etd       12                             // D = E12                 [2]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
%"block%41":                                     // block                   (1446)
        lit16     2048                           // D = 0x800               [6]
        sill      7                              // D = 0x8000007           [6]
        cmpe      15                             // D ?= E15                [3]
        td1       38, %"block%43"                // E sgt D                 [5]
%._crit_edge187:                                 // block                   (1466)
        lsr       0                              // D = 0x0                 [3]
        dte       12                             // E12 = D                 [2]
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        jmp       %"block%49"                    //                         [4]
%"block%43":                                     // block                   (1487)
        etd       15                             // D = E15                 [2]
        srlc      27                             // D >>= 27                [4]
        dte       1                              // E1 = D                  [2]
        lsr       3                              // D = -1                  [3]
        dte       12                             // E12 = D                 [2]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      24                             // D <<= 24                [4]
        cmpe      2                              // D ?= E2                 [3]
        srlc      37                             // shift bit 37(ne) to 0   [4]
        muma1     0                              // D &= 1                  [4]
        muma1     0                              // D &= 0x1                [4]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
%"block%49":                                     // block                   (1543)
        ldg       @.str.30                       // D = @.str.30            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        etd       12                             // D = E12                 [2]
        td1       0, %"block%54"                 // if LSB is set           [5]
        jl        %"block%311"                   //                         [6]
%"block%54":                                     // block                   (1628)
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        bdgtz     %"block%56"                    //                         [4]
%._crit_edge188:                                 // block                   (1640)
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
        lsr       0                              // D = 0x0                 [3]
        dte       12                             // E12 = D                 [2]
        jl        %"block%377"                   //                         [6]
%"block%56":                                     // block                   (1656)
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       3                              // D = -1                  [3]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        sllc      24                             // D <<= 24                [4]
        dte       2                              // E2 = D                  [2]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        sube      2                              // D -= E2                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        cmpe      1                              // D ?= E1                 [3]
        td0       38, %"block%140"               // E sle D                 [5]
        jl        %"block%62"                    //                         [6]
%"block%140":                                    // block                   (1750)
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        bdlez     %"block%142"                   //                         [4]
        jl        %"block%143"                   //                         [6]
%"block%142":                                    // block                   (1768)
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       12                             // E12 = D                 [2]
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
        lit16     176                            // D = 0xB0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       3                              // D = -1                  [3]
        wrd                                      // *A = D                  [2] **** spill related
%"block%219":                                    // block                   (1806)
        ldg       @.str.31                       // D = @.str.31            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     168                            // D = 0xA8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     168                            // D = 0xA8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%237"                   //                         [4]
        jl        %"block%228"                   //                         [6]
%"block%237":                                    // block                   (1981)
        ete       14, 2                          // E2 = E14                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        dte       4                              // E4 = D                  [2]
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        xore      2                              // D ^= E2                 [3]
        bdz       %"block%246"                   //                         [4]
        jl        %"block%240"                   //                         [6]
%"block%246":                                    // block                   (2048)
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       2                              // E2 = D                  [2]
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       4                              // E4 = D                  [2]
        ldg       @train_c                       // D = @train_c            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       5                              // E5 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        dte       6                              // E6 = D                  [2]
%"block%252":                                    // block                   (2226)
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     14                             // A = D + E14             [3]
        lde       7                              // E7 = *A                 [3]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x8                            // D |= 0x8                [6]
        dpeta     14                             // A = D + E14             [3]
        lde       8                              // E8 = *A                 [3]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x10                           // D |= 0x10               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       9                              // E9 = *A                 [3]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x18                           // D |= 0x18               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       10                             // E10 = *A                [3]
        ldg       @non_standard_classes          // D = @non_standard_classes[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%270"                   //                         [4]
        jmp       %"block%279"                   //                         [4]
%"block%270":                                    // block                   (2327)
        ldg       @class1                        // D = @class1             [24]
        dta                                      // A = D                   [2]
        etd       10                             // D = E10                 [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%273"                   //                         [4]
%._crit_edge207:                                 // block                   (2361)
        lsr       3                              // D = -1                  [3]
        dte       10                             // E10 = D                 [2]
        jmp       %"block%279"                   //                         [4]
%"block%273":                                    // block                   (2370)
        ldg       @class2                        // D = @class2             [24]
        dta                                      // A = D                   [2]
        etd       10                             // D = E10                 [2]
        xor                                      // D ^= *A                 [2]
        bdz       %._crit_edge208                //                         [4]
        jl        %"block%276"                   //                         [6]
%._crit_edge208:                                 // block                   (2410)
        lsr       1                              // D = 0x1                 [3]
        dte       10                             // E10 = D                 [2]
%"block%279":                                    // block                   (2415)
        lit16     176                            // D = 0xB0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       7                              // D = E7                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%282"                   //                         [4]
        jmp       %"block%290"                   //                         [4]
%"block%282":                                    // block                   (2436)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       4                              // A = E4                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       12                             // D = E12                 [2]
        wrd                                      // *A = D                  [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       5                              // A = E5                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       10                             // D = E10                 [2]
        wrd                                      // *A = D                  [2]
        lit16     176                            // D = 0xB0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       7                              // D = E7                  [2]
        wrd                                      // *A = D                  [2] **** spill related
%"block%290":                                    // block                   (2488)
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       1                              // A = E1                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       8                              // D = E8                  [2]
        wrd                                      // *A = D                  [2]
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       2                              // A = E2                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       9                              // D = E9                  [2]
        wrd                                      // *A = D                  [2]
        etd       8                              // D = E8                  [2]
        sllc      3                              // D <<= 3                 [4]
        eta       3                              // A = E3                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        addm                                     // *A += D                 [2]
        eta       12                             // A = E12                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       12                             // E12 = A                 [2]
        eta       6                              // A = E6                  [2]
        aaimb     4                              // A += 4                  [3]
        ate       6                              // E6 = A                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        cmpe      6                              // D ?= E6                 [3]
        td1       43, %tn%15                     // E ult D                 [5]
        jmp       %"block%306"                   //                         [4]
%tn%15:
        jl        %"block%252"                   //                         [6]
%"block%228":                                    // block                   (2576)
        ete       14, 2                          // E2 = E14                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        xor                                      // D ^= *A                 [2]
        bdz       %"block%306"                   //                         [4]
        jl        %"block%231"                   //                         [6]
%"block%306":                                    // block                   (2645)
        lit16     168                            // D = 0xA8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      1                              // D ?= E1                 [3]
        td1       39, %._crit_edge211            // E slt D                 [5]
        jl        %"block%377"                   //                         [6]
%._crit_edge211:                                 // block                   (2679)
        lit16     168                            // D = 0xA8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        jl        %"block%219"                   //                         [6]
%"block%143":                                    // block                   (2710)
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       12                             // E12 = D                 [2]
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
        lit16     160                            // D = 0xA0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       3                              // D = -1                  [3]
        wrd                                      // *A = D                  [2] **** spill related
%"block%144":                                    // block                   (2748)
        ldg       @.str.31                       // D = @.str.31            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     152                            // D = 0x98                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     152                            // D = 0x98                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%153"                   //                         [4]
        jmp       %"block%156"                   //                         [4]
%"block%153":                                    // block                   (2921)
        ete       14, 2                          // E2 = E14                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        dte       4                              // E4 = D                  [2]
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        xore      2                              // D ^= E2                 [3]
        bdz       %._crit_edge197                //                         [4]
        jl        %"block%240"                   //                         [6]
%._crit_edge197:                                 // block                   (2988)
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        dte       1                              // E1 = D                  [2]
        jmp       %"block%159"                   //                         [4]
%"block%156":                                    // block                   (3001)
        ete       14, 2                          // E2 = E14                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        xor                                      // D ^= *A                 [2]
        bdz       %._crit_edge198                //                         [4]
        jl        %"block%231"                   //                         [6]
%._crit_edge198:                                 // block                   (3070)
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
%"block%159":                                    // block                   (3080)
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       2                              // E2 = D                  [2]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       3                              // E3 = D                  [2]
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        lde       4                              // E4 = *A                 [3]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       5                              // E5 = D                  [2]
        ldg       @train_c                       // D = @train_c            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       6                              // E6 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        dte       7                              // E7 = D                  [2]
%"block%166":                                    // block                   (3258)
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     14                             // A = D + E14             [3]
        lde       8                              // E8 = *A                 [3]
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x8                            // D |= 0x8                [6]
        dpeta     14                             // A = D + E14             [3]
        lde       9                              // E9 = *A                 [3]
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x10                           // D |= 0x10               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       10                             // E10 = *A                [3]
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x18                           // D |= 0x18               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       11                             // E11 = *A                [3]
        ldg       @non_standard_classes          // D = @non_standard_classes[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%184"                   //                         [4]
        jmp       %"block%190"                   //                         [4]
%"block%184":                                    // block                   (3359)
        ldg       @class1                        // D = @class1             [24]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%187"                   //                         [4]
%._crit_edge200:                                 // block                   (3393)
        lsr       3                              // D = -1                  [3]
        dte       11                             // E11 = D                 [2]
        jmp       %"block%190"                   //                         [4]
%"block%187":                                    // block                   (3402)
        ldg       @class2                        // D = @class2             [24]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        xor                                      // D ^= *A                 [2]
        bdz       %._crit_edge201                //                         [4]
        jl        %"block%276"                   //                         [6]
%._crit_edge201:                                 // block                   (3442)
        lsr       1                              // D = 0x1                 [3]
        dte       11                             // E11 = D                 [2]
%"block%190":                                    // block                   (3447)
        lit16     160                            // D = 0xA0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       8                              // D = E8                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%193"                   //                         [4]
        jmp       %"block%201"                   //                         [4]
%"block%193":                                    // block                   (3468)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       5                              // A = E5                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       12                             // D = E12                 [2]
        wrd                                      // *A = D                  [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       6                              // A = E6                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        wrd                                      // *A = D                  [2]
        lit16     160                            // D = 0xA0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       8                              // D = E8                  [2]
        wrd                                      // *A = D                  [2] **** spill related
%"block%201":                                    // block                   (3520)
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       2                              // A = E2                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       9                              // D = E9                  [2]
        wrd                                      // *A = D                  [2]
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       3                              // A = E3                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       10                             // D = E10                 [2]
        wrd                                      // *A = D                  [2]
        etd       9                              // D = E9                  [2]
        sllc      3                              // D <<= 3                 [4]
        eta       4                              // A = E4                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        addm                                     // *A += D                 [2]
        eta       12                             // A = E12                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       12                             // E12 = A                 [2]
        eta       7                              // A = E7                  [2]
        aaimb     4                              // A += 4                  [3]
        ate       7                              // E7 = A                  [2]
        etd       1                              // D = E1                  [2]
        cmpe      7                              // D ?= E7                 [3]
        td0       39, %"block%217"               // E sge D                 [5]
        jl        %"block%166"                   //                         [6]
%"block%217":                                    // block                   (3599)
        lit16     152                            // D = 0x98                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      1                              // D ?= E1                 [3]
        td1       39, %._crit_edge204            // E slt D                 [5]
        jl        %"block%377"                   //                         [6]
%._crit_edge204:                                 // block                   (3633)
        lit16     152                            // D = 0x98                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        jl        %"block%144"                   //                         [6]
%"block%62":                                     // block                   (3664)
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       12                             // E12 = D                 [2]
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
        lit16     144                            // D = 0x90                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       3                              // D = -1                  [3]
        wrd                                      // *A = D                  [2] **** spill related
%"block%63":                                     // block                   (3702)
        ldg       @.str.31                       // D = @.str.31            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     136                            // D = 0x88                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     136                            // D = 0x88                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%72"                    //                         [4]
        jl        %"block%75"                    //                         [6]
%"block%72":                                     // block                   (3877)
        ete       14, 2                          // E2 = E14                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        dte       4                              // E4 = D                  [2]
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        xore      2                              // D ^= E2                 [3]
        bdnz      %"block%240"                   //                         [4]
%._crit_edge189:                                 // block                   (3938)
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        dte       1                              // E1 = D                  [2]
        jl        %"block%80"                    //                         [6]
%"block%240":                                    // block                   (3953)
        ldg       @.str.33                       // D = @.str.33            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        sllc      24                             // D <<= 24                [4]
        dte       1                              // E1 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        adde      1                              // D += E1                 [3]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%75":                                     // block                   (4105)
        ldg       @.str.32                       // D = @.str.32            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ete       14, 2                          // E2 = E14                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        xor                                      // D ^= *A                 [2]
        bdz       %._crit_edge190                //                         [4]
        jl        %"block%231"                   //                         [6]
%._crit_edge190:                                 // block                   (4270)
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
%"block%80":                                     // block                   (4280)
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       2                              // E2 = D                  [2]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       3                              // E3 = D                  [2]
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        lde       4                              // E4 = *A                 [3]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       5                              // E5 = D                  [2]
        ldg       @train_c                       // D = @train_c            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       6                              // E6 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        dte       7                              // E7 = D                  [2]
%"block%87":                                     // block                   (4458)
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     14                             // A = D + E14             [3]
        lde       8                              // E8 = *A                 [3]
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x8                            // D |= 0x8                [6]
        dpeta     14                             // A = D + E14             [3]
        lde       9                              // E9 = *A                 [3]
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x10                           // D |= 0x10               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       10                             // E10 = *A                [3]
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x18                           // D |= 0x18               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       11                             // E11 = *A                [3]
        ldg       @non_standard_classes          // D = @non_standard_classes[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%105"                   //                         [4]
        jl        %"block%111"                   //                         [6]
%"block%105":                                    // block                   (4561)
        ldg       @class1                        // D = @class1             [24]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%108"                   //                         [4]
%._crit_edge192:                                 // block                   (4595)
        lsr       3                              // D = -1                  [3]
        dte       11                             // E11 = D                 [2]
        jl        %"block%111"                   //                         [6]
%"block%108":                                    // block                   (4606)
        ldg       @class2                        // D = @class2             [24]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%276"                   //                         [4]
        jmp       %._crit_edge193                //                         [4]
%"block%276":                                    // block                   (4644)
        ldg       @.str.34                       // D = @.str.34            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit       2                              // D = 0x2                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%._crit_edge193:                                 // block                   (4740)
        lsr       1                              // D = 0x1                 [3]
        dte       11                             // E11 = D                 [2]
%"block%111":                                    // block                   (4745)
        lit16     144                            // D = 0x90                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       8                              // D = E8                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%114"                   //                         [4]
        jmp       %"block%122"                   //                         [4]
%"block%114":                                    // block                   (4766)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       5                              // A = E5                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       12                             // D = E12                 [2]
        wrd                                      // *A = D                  [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       6                              // A = E6                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        wrd                                      // *A = D                  [2]
        lit16     144                            // D = 0x90                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       8                              // D = E8                  [2]
        wrd                                      // *A = D                  [2] **** spill related
%"block%122":                                    // block                   (4818)
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       2                              // A = E2                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       9                              // D = E9                  [2]
        wrd                                      // *A = D                  [2]
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       3                              // A = E3                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       10                             // D = E10                 [2]
        wrd                                      // *A = D                  [2]
        etd       9                              // D = E9                  [2]
        sllc      3                              // D <<= 3                 [4]
        eta       4                              // A = E4                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        addm                                     // *A += D                 [2]
        eta       12                             // A = E12                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       12                             // E12 = A                 [2]
        eta       7                              // A = E7                  [2]
        aaimb     4                              // A += 4                  [3]
        ate       7                              // E7 = A                  [2]
        etd       1                              // D = E1                  [2]
        cmpe      7                              // D ?= E7                 [3]
        td0       39, %"block%138"               // E sge D                 [5]
        jl        %"block%87"                    //                         [6]
%"block%138":                                    // block                   (4897)
        lit16     136                            // D = 0x88                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      1                              // D ?= E1                 [3]
        td1       39, %._crit_edge196            // E slt D                 [5]
        jl        %"block%377"                   //                         [6]
%._crit_edge196:                                 // block                   (4931)
        lit16     136                            // D = 0x88                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        jl        %"block%63"                    //                         [6]
%"block%231":                                    // block                   (4962)
        ldg       @.str.33                       // D = @.str.33            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        sllc      24                             // D <<= 24                [4]
        adde      1                              // D += E1                 [3]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%311":                                    // block                   (5115)
        ldg       @.str.35                       // D = @.str.35            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ete       14, 2                          // E2 = E14                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lit       7                              // D = 0x7                 [4]
        cmpe      15                             // D ?= E15                [3]
        td1       38, %"block%317"               // E sgt D                 [5]
        jl        %._crit_edge212                //                         [6]
%"block%317":                                    // block                   (5253)
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       2                              // E2 = D                  [2]
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       4                              // E4 = D                  [2]
        ldg       @train_c                       // D = @train_c            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       5                              // E5 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        dte       6                              // E6 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        dte       12                             // E12 = D                 [2]
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
        lsr       3                              // D = -1                  [3]
        dte       7                              // E7 = D                  [2]
%"block%323":                                    // block                   (5446)
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     14                             // A = D + E14             [3]
        lde       8                              // E8 = *A                 [3]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x8                            // D |= 0x8                [6]
        dpeta     14                             // A = D + E14             [3]
        lde       9                              // E9 = *A                 [3]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x10                           // D |= 0x10               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       10                             // E10 = *A                [3]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x18                           // D |= 0x18               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       11                             // E11 = *A                [3]
        ldg       @non_standard_classes          // D = @non_standard_classes[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%341"                   //                         [4]
        jl        %"block%350"                   //                         [6]
%"block%341":                                    // block                   (5549)
        ldg       @class1                        // D = @class1             [24]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%344"                   //                         [4]
%._crit_edge214:                                 // block                   (5583)
        lsr       3                              // D = -1                  [3]
        dte       11                             // E11 = D                 [2]
        jl        %"block%350"                   //                         [6]
%"block%344":                                    // block                   (5594)
        ldg       @class2                        // D = @class2             [24]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%347"                   //                         [4]
        jmp       %._crit_edge215                //                         [4]
%"block%347":                                    // block                   (5632)
        ldg       @.str.34                       // D = @.str.34            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit       2                              // D = 0x2                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%._crit_edge215:                                 // block                   (5728)
        lsr       1                              // D = 0x1                 [3]
        dte       11                             // E11 = D                 [2]
%"block%350":                                    // block                   (5733)
        etd       7                              // D = E7                  [2]
        xore      8                              // D ^= E8                 [3]
        bdnz      %"block%353"                   //                         [4]
        jmp       %"block%361"                   //                         [4]
%"block%353":                                    // block                   (5746)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       4                              // A = E4                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       12                             // D = E12                 [2]
        wrd                                      // *A = D                  [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       5                              // A = E5                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        wrd                                      // *A = D                  [2]
        ete       8, 7                           // E7 = E8                 [4]
%"block%361":                                    // block                   (5789)
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       1                              // A = E1                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       9                              // D = E9                  [2]
        wrd                                      // *A = D                  [2]
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       2                              // A = E2                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       10                             // D = E10                 [2]
        wrd                                      // *A = D                  [2]
        etd       9                              // D = E9                  [2]
        sllc      3                              // D <<= 3                 [4]
        eta       3                              // A = E3                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        addm                                     // *A += D                 [2]
        eta       12                             // A = E12                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       12                             // E12 = A                 [2]
        eta       6                              // A = E6                  [2]
        aaimb     4                              // A += 4                  [3]
        ate       6                              // E6 = A                  [2]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      6                              // D ?= E6                 [3]
        td0       39, %"block%377"               // E sge D                 [5]
        jl        %"block%323"                   //                         [6]
%._crit_edge212:                                 // block                   (5874)
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
        lsr       0                              // D = 0x0                 [3]
        dte       12                             // E12 = D                 [2]
%"block%377":                                    // block                   (5884)
        ldg       @.str.36                       // D = @.str.36            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       14                             // E14 = A                 [2]
        ldg       @samples_per_cluster           // D = @samples_per_cluster[24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        etd       1                              // D = E1                  [2]
        cmpe      14                             // D ?= E14                [3]
        td0       39, %"block%385"               // E sge D                 [5]
        jmp       %"block%388"                   //                         [4]
%"block%385":                                    // block                   (6006)
        ldg       @.str.37                       // D = @.str.37            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        etd       14                             // D = E14                 [2]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        etd       1                              // D = E1                  [2]
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
%"block%388":                                    // block                   (6105)
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        etd       12                             // D = E12                 [2]
        wrd                                      // *A = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        eta       1                              // A = E1                  [2]
        wrd                                      // *A = D                  [2]
        ldg       @cluster_samples               // D = @cluster_samples    [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        wrd                                      // *A = D                  [2]
        ldg       @.str.38                       // D = @.str.38            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fclose                        // D = @fclose             [15]
        jale      1                              // E2 = call @fclose       [3]
        ldg       @data_read_buffer              // D = @data_read_buffer   [24]
        dta                                      // A = D                   [2]
        bita      %tn%16                         // A = *A                  [4]
%tn%16:
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldc       @free                          // D = @free               [15]
        jale      1                              // call @free              [3]
        ldg       @.str.39                       // D = @.str.39            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
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
%tn%0:                                           // block                   (6479)
        eta       0                              // A = newFP               [2]
        lde       0                              // E0 = oldFP              [3]
        ate       11                             // E11 = newFP             [2]
        ldr       @_frame_buckets_+8             // D = bucket              [24]
        dtd2                                     // D2 = FP                 [2]
        dta                                      // A = D                   [2]
%tn%17:
        ld                                       // D = *bucket             [1]
        bdgtz     %tn%18                         // bucket valid?           [4]
        bdz       %tn%18                         // bucket empty?           [4]
        jmp       %tn%17                         // bucket locked           [4]
%tn%18:
        eta       11                             // A = newFP               [2]
        std                                      // *fp = free list         [2]
        swapd                                    //                         [2]
        dta                                      // A = D                   [2]
        swapd                                    //                         [2]
        cas       11                             // bucket changed?         [3]
        bnz       %tn%17                         // if bucket changed, try again[4]
        jmpe      1                              // return                  [3]
        .function_end                            // function size           (6547)
        .extern   @sprintf
        .extern   @fopen
        .extern   @fseek
        .extern   @ftell
        .extern   @fread
        .extern   @fclose
        .extern   @free
        .global   @featpart_node_load_from_n0
        .text
@featpart_node_load_from_n0:
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
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       14                             // D = E14                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       13                             // D = E13                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       12                             // D = E12                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        etd       1                              // D = E1                  [2]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      7                              // A += 56                 [3] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        ete       2, 13                          // E13 = E2                [4]
        lsr       1                              // D = 0x1                 [3]
        sllc      27                             // D = 0x8000000           [4]
        dte       2                              // E2 = D                  [2]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // E2 = call @malloc       [3]
        ldg       @data_read_buffer              // D = @data_read_buffer   [24]
        dta                                      // A = D                   [2]
        bita      %tn%9                          // A = *A                  [4]
%tn%9:
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2]
        ldg       @data_read_buffer              // D = @data_read_buffer   [24]
        dta                                      // A = D                   [2]
        bita      %tn%10                         // A = *A                  [4]
%tn%10:
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @train_data_path               // D = @train_data_path    [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldc       @strlen                        // D = @strlen             [15]
        jale      1                              // E2 = call @strlen       [3]
        lit       10                             // D = 0xA                 [4]
        dpeta     2                              // A = D + E2              [3]
        ate       2                              // E2 = A                  [2]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // E2 = call @malloc       [3]
        ete       2, 12                          // E12 = E2                [4]
        ete       12, 2                          // E2 = E12                [4]
        ldg       @.str.24                       // D = @.str.24            [24]
        dte       3                              // E3 = D                  [2]
        ldg       @train_data_path               // D = @train_data_path    [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @sprintf                       // D = @sprintf            [15]
        jale      1                              // E2 = call @sprintf      [3]
        ete       12, 2                          // E2 = E12                [4]
        ldg       @.str.26                       // D = @.str.26            [24]
        dte       3                              // E3 = D                  [2]
        ldc       @fopen                         // D = @fopen              [15]
        jale      1                              // E2 = call @fopen        [3]
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        bdz       %"block%16"                    //                         [4]
        jmp       %"block%18"                    //                         [4]
%"block%16":                                     // block                   (760)
        ldg       @.str.27                       // D = @.str.27            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%18":                                     // block                   (827)
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       3                              // E3 = D                  [2]
        lit       2                              // D = 0x2                 [4]
        dte       4                              // E4 = D                  [2]
        ldc       @fseek                         // D = @fseek              [15]
        jale      1                              // E2 = call @fseek        [3]
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @ftell                         // D = @ftell              [15]
        jale      1                              // E2 = call @ftell        [3]
        ete       2, 12                          // E12 = E2                [4]
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       12                             // D = E12                 [2]
        bdgtz     %tn%11                         // if D > 0                [4]
        bdz       %tn%12                         // if D == 0               [4]
        addl      7                              // D += 8                  [6]
%tn%11:
        srac      3                              // D >>= 3                 [4]
%tn%12:
        wrd                                      // *A = D                  [2] **** spill related
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       3                              // E3 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        dte       4                              // E4 = D                  [2]
        ldc       @fseek                         // D = @fseek              [15]
        jale      1                              // E2 = call @fseek        [3]
        lit16     2048                           // D = 0x800               [6]
        sill      7                              // D = 0x8000007           [6]
        cmpe      12                             // D ?= E12                [3]
        td1       38, %"block%24"                // E sgt D                 [5]
        jl        %"block%146"                   //                         [6]
%"block%24":                                     // block                   (991)
        etd       12                             // D = E12                 [2]
        srlc      27                             // D >>= 27                [4]
        dte       1                              // E1 = D                  [2]
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      24                             // D <<= 24                [4]
        cmpe      2                              // D ?= E2                 [3]
        srlc      37                             // shift bit 37(ne) to 0   [4]
        muma1     0                              // D &= 1                  [4]
        muma1     0                              // D &= 0x1                [4]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        bdnz      %"block%31"                    //                         [4]
%._crit_edge:                                    // block                   (1054)
        lsr       3                              // D = -1                  [3]
        dte       12                             // E12 = D                 [2]
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
        jl        %"block%235"                   //                         [6]
%"block%31":                                     // block                   (1070)
        ldg       @stdout                        // D = @stdout             [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     136                            // D = 0x88                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       3                              // D = -1                  [3]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     136                            // D = 0x88                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        sllc      24                             // D <<= 24                [4]
        dte       2                              // E2 = D                  [2]
        lit16     144                            // D = 0x90                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        sube      2                              // D -= E2                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     144                            // D = 0x90                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     152                            // D = 0x98                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        cmpe      1                              // D ?= E1                 [3]
        srlc      38                             // shift bit 38(slt) to 0  [4]
        muma1     0                              // D &= 1                  [4]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     144                            // D = 0x90                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     160                            // D = 0xA0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        cmpe      1                              // D ?= E1                 [3]
        srlc      38                             // shift bit 38(slt) to 0  [4]
        muma1     0                              // D &= 1                  [4]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       15                             // E15 = D                 [2]
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
        lit16     176                            // D = 0xB0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       3                              // D = -1                  [3]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       3                              // D = -1                  [3]
        dte       12                             // E12 = D                 [2]
%"block%39":                                     // block                   (1288)
        ldg       @.str.31                       // D = @.str.31            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        etd       15                             // D = E15                 [2]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit16     168                            // D = 0xA8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      15                             // D += E15                [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     168                            // D = 0xA8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     136                            // D = 0x88                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%60"                    //                         [4]
        jl        %"block%48"                    //                         [6]
%"block%60":                                     // block                   (1447)
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        dte       4                              // E4 = D                  [2]
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        xore      2                              // D ^= E2                 [3]
        bdnz      %"block%63"                    //                         [4]
%._crit_edge105:                                 // block                   (1514)
        lit16     184                            // D = 0xB8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        wrd                                      // *A = D                  [2] **** spill related
        jl        %"block%69"                    //                         [6]
%"block%63":                                     // block                   (1538)
        ldg       @.str.33                       // D = @.str.33            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        etd       15                             // D = E15                 [2]
        sllc      24                             // D <<= 24                [4]
        dte       1                              // E1 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        adde      1                              // D += E1                 [3]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%48":                                     // block                   (1684)
        lit16     152                            // D = 0x98                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        td1       0, %"block%49"                 // if LSB is set           [5]
        jmp       %"block%52"                    //                         [4]
%"block%49":                                     // block                   (1703)
        ldg       @.str.32                       // D = @.str.32            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        lit16     144                            // D = 0x90                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
%"block%52":                                     // block                   (1803)
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lit16     144                            // D = 0x90                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lit16     144                            // D = 0x90                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        xor                                      // D ^= *A                 [2]
        bdz       %"block%68"                    //                         [4]
        jl        %"block%55"                    //                         [6]
%"block%68":                                     // block                   (1882)
        lit16     160                            // D = 0xA0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        td1       0, %._crit_edge106             // if LSB is set           [5]
        jl        %"block%141"                   //                         [6]
%._crit_edge106:                                 // block                   (1903)
        lit16     144                            // D = 0x90                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     184                            // D = 0xB8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
%"block%69":                                     // block                   (1928)
        lsr       0                              // D = 0x0                 [3]
        dte       15                             // E15 = D                 [2]
%"block%71":                                     // block                   (1933)
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     192                            // D = 0xC0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x8                            // D |= 0x8                [6]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     200                            // D = 0xC8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x10                           // D |= 0x10               [6]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     208                            // D = 0xD0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x18                           // D |= 0x18               [6]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     216                            // D = 0xD8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @non_standard_classes          // D = @non_standard_classes[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%89"                    //                         [4]
        jl        %"block%98"                    //                         [6]
%"block%89":                                     // block                   (2120)
        ldg       @class1                        // D = @class1             [24]
        dte       1                              // E1 = D                  [2]
        lit16     216                            // D = 0xD8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       1                              // A = E1                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%92"                    //                         [4]
%._crit_edge109:                                 // block                   (2164)
        lit16     216                            // D = 0xD8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       3                              // D = -1                  [3]
        wrd                                      // *A = D                  [2] **** spill related
        jl        %"block%98"                    //                         [6]
%"block%92":                                     // block                   (2184)
        ldg       @class2                        // D = @class2             [24]
        dte       1                              // E1 = D                  [2]
        lit16     216                            // D = 0xD8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       1                              // A = E1                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%95"                    //                         [4]
%._crit_edge110:                                 // block                   (2228)
        lit16     216                            // D = 0xD8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        jmp       %"block%98"                    //                         [4]
%"block%95":                                     // block                   (2246)
        ldg       @.str.34                       // D = @.str.34            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit       2                              // D = 0x2                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%98":                                     // block                   (2344)
        lit16     176                            // D = 0xB0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     192                            // D = 0xC0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%101"                   //                         [4]
        jl        %"block%123"                   //                         [6]
%"block%101":                                    // block                   (2379)
        lit16     176                            // D = 0xB0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     192                            // D = 0xC0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lit16     224                            // D = 0xE0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        sube      2                              // D -= E2                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     224                            // D = 0xE0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @abs                           // D = @abs                [15]
        jale      1                              // E2 = call @abs          [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td0       26, %._crit_edge112            // E sle D                 [5]
        jmp       %"block%106"                   //                         [4]
%._crit_edge112:                                 // block                   (2464)
        lit16     192                            // D = 0xC0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     176                            // D = 0xB0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        jl        %"block%123"                   //                         [6]
%"block%106":                                    // block                   (2495)
        lit16     232                            // D = 0xE8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
%"block%107":                                    // block                   (2509)
        eta       12                             // A = E12                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       12                             // E12 = A                 [2]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        wrd                                      // *A = D                  [2]
        ldg       @train_c                       // D = @train_c            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        lit16     216                            // D = 0xD8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       1                              // A = E1                  [2]
        wrd                                      // *A = D                  [2]
        lit16     232                            // D = 0xE8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     232                            // D = 0xE8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     224                            // D = 0xE0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @abs                           // D = @abs                [15]
        jale      1                              // E2 = call @abs          [3]
        lit16     232                            // D = 0xE8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        etd       2                              // D = E2                  [2]
        sllc      32                             // D <<= 32                [4]
        srac      32                             // D >>= 32                [4]
        cmpe      1                              // D ?= E1                 [3]
        td0       39, %.loopexit99               // E sge D                 [5]
        jl        %"block%107"                   //                         [6]
%.loopexit99:                                    // block                   (2721)
        lit16     192                            // D = 0xC0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     176                            // D = 0xB0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
%"block%123":                                    // block                   (2746)
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        lit16     200                            // D = 0xC8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       1                              // A = E1                  [2]
        wrd                                      // *A = D                  [2]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        lit16     208                            // D = 0xD0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       1                              // A = E1                  [2]
        wrd                                      // *A = D                  [2]
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     200                            // D = 0xC8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        lsr       1                              // D = 0x1                 [3]
        radd                                     // *A += D                 [2]
        eta       14                             // A = E14                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       14                             // E14 = A                 [2]
        eta       15                             // A = E15                 [2]
        aaimb     4                              // A += 4                  [3]
        ate       15                             // E15 = A                 [2]
        lit16     184                            // D = 0xB8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      15                             // D ?= E15                [3]
        td0       39, %"block%141"               // E sge D                 [5]
        jl        %"block%71"                    //                         [6]
%"block%141":                                    // block                   (2965)
        lit16     168                            // D = 0xA8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      1                              // D ?= E1                 [3]
        td1       43, %._crit_edge115            // E ult D                 [5]
        jl        %"block%235"                   //                         [6]
%._crit_edge115:                                 // block                   (2999)
        lit16     168                            // D = 0xA8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       15                             // E15 = *A                [3] **** spill related
        jl        %"block%39"                    //                         [6]
%"block%55":                                     // block                   (3017)
        ldg       @.str.33                       // D = @.str.33            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        lit16     144                            // D = 0x90                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        sllc      24                             // D <<= 24                [4]
        add                                      // D += *A                 [2] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%146":                                    // block                   (3162)
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lit       7                              // D = 0x7                 [4]
        cmpe      12                             // D ?= E12                [3]
        td1       38, %"block%150"               // E sgt D                 [5]
%._crit_edge116:                                 // block                   (3228)
        lsr       3                              // D = -1                  [3]
        dte       12                             // E12 = D                 [2]
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
        jl        %"block%235"                   //                         [6]
%"block%150":                                    // block                   (3244)
        ldg       @stdout                        // D = @stdout             [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     240                            // D = 0xF0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     248                            // D = 0xF8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
        lit16     256                            // D = 0x100               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       3                              // D = -1                  [3]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       3                              // D = -1                  [3]
        dte       12                             // E12 = D                 [2]
%"block%152":                                    // block                   (3324)
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     248                            // D = 0xF8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        lde       1                              // E1 = *A                 [3]
        lit16     264                            // D = 0x108               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     248                            // D = 0xF8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        sllc      3                              // D <<= 3                 [4]
        orl0      0x8                            // D |= 0x8                [6]
        dpeta     1                              // A = D + E1              [3]
        lde       1                              // E1 = *A                 [3]
        lit16     272                            // D = 0x110               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     248                            // D = 0xF8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        sllc      3                              // D <<= 3                 [4]
        orl0      0x10                           // D |= 0x10               [6]
        dpeta     1                              // A = D + E1              [3]
        lde       1                              // E1 = *A                 [3]
        lit16     280                            // D = 0x118               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     248                            // D = 0xF8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        sllc      3                              // D <<= 3                 [4]
        orl0      0x18                           // D |= 0x18               [6]
        dpeta     1                              // A = D + E1              [3]
        lde       15                             // E15 = *A                [3]
        ldg       @non_standard_classes          // D = @non_standard_classes[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%170"                   //                         [4]
        jmp       %"block%179"                   //                         [4]
%"block%170":                                    // block                   (3536)
        ldg       @class1                        // D = @class1             [24]
        dta                                      // A = D                   [2]
        etd       15                             // D = E15                 [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%173"                   //                         [4]
%._crit_edge118:                                 // block                   (3570)
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
        jmp       %"block%179"                   //                         [4]
%"block%173":                                    // block                   (3579)
        ldg       @class2                        // D = @class2             [24]
        dta                                      // A = D                   [2]
        etd       15                             // D = E15                 [2]
        xor                                      // D ^= *A                 [2]
        bdz       %._crit_edge119                //                         [4]
        jl        %"block%176"                   //                         [6]
%._crit_edge119:                                 // block                   (3619)
        lsr       1                              // D = 0x1                 [3]
        dte       15                             // E15 = D                 [2]
%"block%179":                                    // block                   (3624)
        lit16     256                            // D = 0x100               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     264                            // D = 0x108               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%182"                   //                         [4]
        jl        %"block%208"                   //                         [6]
%"block%182":                                    // block                   (3659)
        lit16     256                            // D = 0x100               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     264                            // D = 0x108               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lit16     288                            // D = 0x120               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        sube      2                              // D -= E2                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     288                            // D = 0x120               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @abs                           // D = @abs                [15]
        jale      1                              // E2 = call @abs          [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       26, %"block%187"               // E sgt D                 [5]
        jl        %"block%188"                   //                         [6]
%"block%187":                                    // block                   (3746)
        lit16     296                            // D = 0x128               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
%"block%192":                                    // block                   (3760)
        eta       12                             // A = E12                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       12                             // E12 = A                 [2]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        wrd                                      // *A = D                  [2]
        ldg       @train_c                       // D = @train_c            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       15                             // D = E15                 [2]
        wrd                                      // *A = D                  [2]
        lit16     296                            // D = 0x128               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     296                            // D = 0x128               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     288                            // D = 0x120               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @abs                           // D = @abs                [15]
        jale      1                              // E2 = call @abs          [3]
        lit16     296                            // D = 0x128               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        etd       2                              // D = E2                  [2]
        sllc      32                             // D <<= 32                [4]
        srac      32                             // D >>= 32                [4]
        cmpe      1                              // D ?= E1                 [3]
        td0       39, %"block%188"               // E sge D                 [5]
        jl        %"block%192"                   //                         [6]
%"block%188":                                    // block                   (3962)
        ldg       @.str.40                       // D = @.str.40            [24]
        dte       2                              // E2 = D                  [2]
        etd       12                             // D = E12                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit16     240                            // D = 0xF0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit16     264                            // D = 0x108               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     256                            // D = 0x100               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
%"block%208":                                    // block                   (4070)
        ldg       @non_zeros_per_node            // D = @non_zeros_per_node [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        ldg       @.str.41                       // D = @.str.41            [24]
        dte       2                              // E2 = D                  [2]
        lit16     264                            // D = 0x108               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        lit16     272                            // D = 0x110               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        lit16     280                            // D = 0x118               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        etd       15                             // D = E15                 [2]
        eta       0                              // A = E0                  [2]
        aaim      4                              // A += 32                 [3]
        wrd                                      // *A = D                  [2]
        etd       14                             // D = E14                 [2]
        eta       0                              // A = E0                  [2]
        aaim      5                              // A += 40                 [3]
        wrd                                      // *A = D                  [2]
        etd       1                              // D = E1                  [2]
        eta       0                              // A = E0                  [2]
        aaim      6                              // A += 48                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit16     240                            // D = 0xF0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        lit16     272                            // D = 0x110               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       1                              // A = E1                  [2]
        wrd                                      // *A = D                  [2]
        ldg       @.str.42                       // D = @.str.42            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        etd       14                             // D = E14                 [2]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        lit16     272                            // D = 0x110               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit16     240                            // D = 0xF0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        lit16     280                            // D = 0x118               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       1                              // A = E1                  [2]
        wrd                                      // *A = D                  [2]
        ldg       @.str.43                       // D = @.str.43            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        etd       14                             // D = E14                 [2]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        lit16     280                            // D = 0x118               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit16     240                            // D = 0xF0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     272                            // D = 0x110               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        lsr       1                              // D = 0x1                 [3]
        radd                                     // *A += D                 [2]
        ldg       @.str.44                       // D = @.str.44            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        lit16     272                            // D = 0x110               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit16     240                            // D = 0xF0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        eta       14                             // A = E14                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       14                             // E14 = A                 [2]
        lit16     248                            // D = 0xF8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     248                            // D = 0xF8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lit       4                              // D = 0x4                 [4]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     248                            // D = 0xF8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      1                              // D ?= E1                 [3]
        td0       39, %"block%235"               // E sge D                 [5]
        jl        %"block%152"                   //                         [6]
%"block%235":                                    // block                   (4821)
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        ldg       @train_sample_count            // D = @train_sample_count [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      12                             // D ?= E12                [3]
        td1       39, %"block%244"               // E slt D                 [5]
        jmp       %"block%250"                   //                         [4]
%"block%244":                                    // block                   (4899)
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        etd       14                             // D = E14                 [2]
        wrd                                      // *A = D                  [2]
        eta       12                             // A = E12                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       12                             // E12 = A                 [2]
        ldg       @train_sample_count            // D = @train_sample_count [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      12                             // D ?= E12                [3]
        td0       39, %"block%250"               // E sge D                 [5]
        jmp       %"block%244"                   //                         [4]
%"block%250":                                    // block                   (4958)
        lsr       0                              // D = 0x0                 [3]
        eta       1                              // A = E1                  [2]
        wrd                                      // *A = D                  [2]
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fclose                        // D = @fclose             [15]
        jale      1                              // E2 = call @fclose       [3]
        ldg       @data_read_buffer              // D = @data_read_buffer   [24]
        dta                                      // A = D                   [2]
        bita      %tn%13                         // A = *A                  [4]
%tn%13:
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldc       @free                          // D = @free               [15]
        jale      1                              // call @free              [3]
        ldg       @.str.45                       // D = @.str.45            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        ldg       @stdout                        // D = @stdout             [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        eta       0                              // A = E0                  [2] **** spill related
        aaim      7                              // A += 56                 [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       12                             // E12 = *A                [3] **** spill related
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       13                             // E13 = *A                [3] **** spill related
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       14                             // E14 = *A                [3] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       15                             // E15 = *A                [3] **** spill related
%tn%0:                                           // block                   (5202)
        eta       0                              // A = newFP               [2]
        lde       0                              // E0 = oldFP              [3]
        ate       11                             // E11 = newFP             [2]
        ldr       @_frame_buckets_+16            // D = bucket              [24]
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
%"block%176":                                    // block                   (5270)
        ldg       @.str.34                       // D = @.str.34            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit16     240                            // D = 0xF0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit       2                              // D = 0x2                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
        .function_end                            // function size           (5368)
        .extern   @abs
        .global   @populateTrainingData
        .text
@populateTrainingData:
        .function_begin                          // entry                   (0)
        ldr       @_frame_buckets_+8             // D = &bucket             [24]
        dta                                      // A = &bucket             [2]
        ata2                                     // A2 = &bucket            [2]
%tn%9:
        lsr       3                              // D = -1                  [3]
        swap                                     // lock bucket & put cur bucket value in D[2]
        bdgtz     %tn%10                         // won lock, jump to that  [4]
        jmp       %tn%11                         // didn't win lock, jump to that[4]
%tn%10:
        dta                                      // A = new FP              [2]
        etd       0                              // D = caller's FP         [2]
        ate       0                              // E0 = new FP             [2]
        swap                                     // Mem[A] = caller FP; D = next FP[2]
        swapa                                    // A=&bucket, A2 = new FP  [2]
        wrd                                      // *A = next FP (unlocks bucket)[2]
        swapa                                    // A = new FP, A2 = &bucket[2]
        jl        %tn%8                          // jump to done            [6]
%tn%11:
        bdz       %tn%7                          // bucket was empty, have to malloc a frame[4]
        jmp       %tn%9                          // *bucket was negative, retry frame cache[4]
%tn%7:
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
%tn%12:
        lit       8                              // D = 8                   [4]
        addms                                    // *A += D; D = *A         [2]
        bdz       %tn%14                         // branch if unlocked      [4]
        muma1     6                              //  D &= 0x7F              [4]
%tn%13:
        aaim      0                              // A += 0 (busy no-op)     [3]
        bnzd      %tn%13                         // branch if D != 0        [4]
        jmp       %tn%12                         // retry lock              [4]
%tn%14:
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
%tn%8:
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
        ldg       @train_data                    // D = @train_data         [24]
        dta                                      // A = D                   [2]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // E2 = call @malloc       [3]
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // E2 = call @malloc       [3]
        ete       2, 12                          // E12 = E2                [4]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%9"                     //                         [4]
        jmp       %._crit_edge                   //                         [4]
%"block%9":                                      // block                   (562)
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
%"block%10":                                     // block                   (567)
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     12                             // A = D + E12             [3]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        eta       14                             // A = E14                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       14                             // E14 = A                 [2]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      14                             // D ?= E14                [3]
        td0       39, %"block%17"                // E sge D                 [5]
        jmp       %"block%10"                    //                         [4]
%._crit_edge:                                    // block                   (649)
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
%"block%17":                                     // block                   (654)
        ldg       @total_train_points            // D = @total_train_points [24]
        dta                                      // A = D                   [2]
        lde       15                             // E15 = *A                [3]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        sllc      2                              // D <<= 2                 [4]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @train_data_path               // D = @train_data_path    [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.26                       // D = @.str.26            [24]
        dte       3                              // E3 = D                  [2]
        ldc       @fopen                         // D = @fopen              [15]
        jale      1                              // E2 = call @fopen        [3]
        ldg       @train_data                    // D = @train_data         [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2]
        eta       2                              // A = E2                  [2]
        baz       %"block%24"                    //                         [4]
        jmp       %"block%26"                    //                         [4]
%"block%24":                                     // block                   (811)
        ldg       @.str.27                       // D = @.str.27            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%26":                                     // block                   (878)
        lit16     457                            // D = 0x1C9               [6]
        sill      50048                          // D = 0x1C9C380           [6]
        cmpe      15                             // D ?= E15                [3]
        td0       38, %"block%206"               // E sle D                 [5]
        jl        %"block%28"                    //                         [6]
%"block%206":                                    // block                   (904)
        etd       15                             // D = E15                 [2]
        sllc      5                              // D <<= 5                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // E2 = call @malloc       [3]
        ete       2, 13                          // E13 = E2                [4]
        ete       13, 2                          // E2 = E13                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        ldg       @train_data                    // D = @train_data         [24]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%212"                   //                         [4]
        jmp       %"block%214"                   //                         [4]
%"block%212":                                    // block                   (1020)
        ldg       @.str.53                       // D = @.str.53            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%214":                                    // block                   (1087)
        etd       15                             // D = E15                 [2]
        bdgtz     %"block%216"                   //                         [4]
        jl        %"block%308"                   //                         [6]
%"block%216":                                    // block                   (1099)
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        lde       6                              // E6 = *A                 [3]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     176                            // D = 0xB0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     184                            // D = 0xB8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @cluster_samples               // D = @cluster_samples    [24]
        dta                                      // A = D                   [2]
        lde       8                              // E8 = *A                 [3]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     192                            // D = 0xC0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @train_c                       // D = @train_c            [24]
        dta                                      // A = D                   [2]
        lde       7                              // E7 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       9                              // E9 = D                  [2]
        lsr       3                              // D = -1                  [3]
        dte       1                              // E1 = D                  [2]
%"block%223":                                    // block                   (1322)
        etd       9                              // D = E9                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        lde       10                             // E10 = *A                [3]
        etd       9                              // D = E9                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x8                            // D |= 0x8                [6]
        dpeta     13                             // A = D + E13             [3]
        lsr       3                              // D = -1                  [3]
        add                                      // D += *A                 [2]
        dte       5                              // E5 = D                  [2]
        etd       9                              // D = E9                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x10                           // D |= 0x10               [6]
        dpeta     13                             // A = D + E13             [3]
        lde       4                              // E4 = *A                 [3]
        etd       9                              // D = E9                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x18                           // D |= 0x18               [6]
        dpeta     13                             // A = D + E13             [3]
        lde       11                             // E11 = *A                [3]
        ldg       @non_standard_classes          // D = @non_standard_classes[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%241"                   //                         [4]
        jmp       %"block%251"                   //                         [4]
%"block%241":                                    // block                   (1427)
        ldg       @class1                        // D = @class1             [24]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%244"                   //                         [4]
%._crit_edge160:                                 // block                   (1461)
        lsr       3                              // D = -1                  [3]
        dte       11                             // E11 = D                 [2]
        jmp       %"block%251"                   //                         [4]
%"block%244":                                    // block                   (1470)
        ldg       @class2                        // D = @class2             [24]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        xor                                      // D ^= *A                 [2]
        bdz       %._crit_edge161                //                         [4]
        jl        %"block%247"                   //                         [6]
%._crit_edge161:                                 // block                   (1510)
        lsr       1                              // D = 0x1                 [3]
        dte       11                             // E11 = D                 [2]
%"block%251":                                    // block                   (1515)
        etd       1                              // D = E1                  [2]
        xore      10                             // D ^= E10                [3]
        bdnz      %"block%256"                   //                         [4]
%"block%254":                                    // block                   (1524)
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     12                             // A = D + E12             [3]
        ate       3                              // E3 = A                  [2]
        jl        %"block%288"                   //                         [6]
%"block%256":                                    // block                   (1541)
        eta       12                             // A = E12                 [2]
        lde       1                              // E1 = *A                 [3]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        lsr       1                              // D = 0x1                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       38, %"block%260"               // E sgt D                 [5]
%._crit_edge162:                                 // block                   (1586)
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
        jmp       %"block%261"                   //                         [4]
%"block%260":                                    // block                   (1595)
        lsr       1                              // D = 0x1                 [3]
        dte       3                              // E3 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
%"block%279":                                    // block                   (1605)
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     12                             // A = D + E12             [3]
        ld                                       // D = *A                  [1]
        cmpe      1                              // D ?= E1                 [3]
        td0       38, %tn%2                      // D sge E                 [5]
%tn%0:                                           // block                   (1623)
        ete       3, 14                          // E14 = E3                [4]
%tn%2:                                           // block                   (1627)
        eta       3                              // A = E3                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       3                              // E3 = A                  [2]
        etd       2                              // D = E2                  [2]
        xore      3                              // D ^= E3                 [3]
        bdz       %"block%261"                   //                         [4]
        jmp       %"block%279"                   //                         [4]
%"block%261":                                    // block                   (1647)
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dte       15                             // E15 = D                 [2]
        lsr       1                              // D = 0x1                 [3]
        eta       15                             // A = E15                 [2]
        addm                                     // *A += D                 [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     8                              // A = D + E8              [3]
        lsr       1                              // D = 0x1                 [3]
        addm                                     // *A += D                 [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     12                             // A = D + E12             [3]
        ate       3                              // E3 = A                  [2]
        lit16     192                            // D = 0xC0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        eta       3                              // A = E3                  [2]
        lde       2                              // E2 = *A                 [3]
        eta       15                             // A = E15                 [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     7                              // A = D + E7              [3]
        lde       1                              // E1 = *A                 [3]
        eta       15                             // A = E15                 [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        etd       11                             // D = E11                 [2]
        wrd                                      // *A = D                  [2]
        ete       10, 1                          // E1 = E10                [4]
%"block%288":                                    // block                   (1767)
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     6                              // A = D + E6              [3]
        lde       2                              // E2 = *A                 [3]
        eta       3                              // A = E3                  [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        etd       5                              // D = E5                  [2]
        wrd                                      // *A = D                  [2]
        lit16     176                            // D = 0xB0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        eta       3                              // A = E3                  [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        etd       4                              // D = E4                  [2]
        wrd                                      // *A = D                  [2]
        lit16     184                            // D = 0xB8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%15                         // A = *A                  [4] **** spill related
%tn%15:
        etd       5                              // D = E5                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        addm                                     // *A += D                 [2]
        lsr       1                              // D = 0x1                 [3]
        eta       3                              // A = E3                  [2]
        addm                                     // *A += D                 [2]
        eta       9                              // A = E9                  [2]
        aaimb     4                              // A += 4                  [3]
        ate       9                              // E9 = A                  [2]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      9                              // D ?= E9                 [3]
        td0       39, %"block%308"               // E sge D                 [5]
        jl        %"block%223"                   //                         [6]
%"block%308":                                    // block                   (1893)
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%311"                   //                         [4]
        jl        %"block%326"                   //                         [6]
%"block%311":                                    // block                   (1930)
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
%"block%313":                                    // block                   (1964)
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        lde       3                              // E3 = *A                 [3]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     12                             // A = D + E12             [3]
        lde       4                              // E4 = *A                 [3]
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        addl      8                              // D += 8                  [6]
        dpeta     3                              // A = D + E3              [3]
        etd       4                              // D = E4                  [2]
        wrd                                      // *A = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        eta       3                              // A = E3                  [2]
        wrd                                      // *A = D                  [2]
        eta       2                              // A = E2                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       2                              // E2 = A                  [2]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      2                              // D ?= E2                 [3]
        td1       39, %tn%16                     // E slt D                 [5]
        jl        %"block%326"                   //                         [6]
%tn%16:
        jmp       %"block%313"                   //                         [4]
%"block%247":                                    // block                   (2082)
        ldg       @.str.34                       // D = @.str.34            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        ldg       @stdout                        // D = @stdout             [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit       2                              // D = 0x2                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%28":                                     // block                   (2197)
        lit16     457                            // D = 0x1C9               [6]
        sill      50048                          // D = 0x1C9C380           [6]
        dte       1                              // E1 = D                  [2]
        etd       15                             // D = E15                 [2]
        udive     1                              // D /= E1                 [3]
        dte       1                              // E1 = D                  [2]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lit16     -1832                          // D = 0xFFFFFFFFFFFFF8D8  [6]
        sill      61952                          // D = 0xFFFFFFFFF8D8F200  [6]
        multe     1                              // D *= E1                 [3]
        adde      2                              // D += E2                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2] **** spill related
        bdz       %tn%17                         //                         [4]
        lsr       1                              // D = 1                   [3]
%tn%17:
        muma1     0                              // D &= 0x1                [4]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @.str.46                       // D = @.str.46            [24]
        dte       2                              // E2 = D                  [2]
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        ldg       @stdout                        // D = @stdout             [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit16     14648                          // D = 0x3938              [6]
        sill      28672                          // D = 0x39387000          [6]
        dte       2                              // E2 = D                  [2]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // E2 = call @malloc       [3]
        ete       2, 13                          // E13 = E2                [4]
        eta       13                             // A = E13                 [2]
        baz       %"block%40"                    //                         [4]
        jmp       %"block%42"                    //                         [4]
%"block%40":                                     // block                   (2463)
        ldg       @.str.47                       // D = @.str.47            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%42":                                     // block                   (2530)
        ete       13, 2                          // E2 = E13                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lit16     1831                           // D = 0x727               [6]
        sill      3584                           // D = 0x7270E00           [6]
        dte       4                              // E4 = D                  [2]
        ldg       @train_data                    // D = @train_data         [24]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        bdnz      %"block%46"                    //                         [4]
        jl        %"block%51"                    //                         [6]
%"block%46":                                     // block                   (2619)
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        cmpe      1                              // D ?= E1                 [3]
        srlc      36                             // shift bit 36(eq) to 0   [4]
        muma1     0                              // D &= 1                  [4]
        wrd                                      // *A = D                  [2] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       3                              // D = -1                  [3]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        sllc      3                              // D <<= 3                 [4]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     136                            // D = 0x88                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lit16     1831                           // D = 0x727               [6]
        sill      3584                           // D = 0x7270E00           [6]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     144                            // D = 0x90                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       3                              // D = -1                  [3]
        wrd                                      // *A = D                  [2] **** spill related
%"block%57":                                     // block                   (2753)
        lit16     136                            // D = 0x88                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        bdgtz     %"block%66"                    //                         [4]
        jl        %"block%157"                   //                         [6]
%"block%66":                                     // block                   (2773)
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        lde       6                              // E6 = *A                 [3]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        lde       7                              // E7 = *A                 [3]
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     152                            // D = 0x98                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @cluster_samples               // D = @cluster_samples    [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     160                            // D = 0xA0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        lde       4                              // E4 = *A                 [3]
        ldg       @train_c                       // D = @train_c            [24]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       8                              // E8 = D                  [2]
%"block%73":                                     // block                   (2978)
        etd       8                              // D = E8                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        lde       10                             // E10 = *A                [3]
        etd       8                              // D = E8                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x8                            // D |= 0x8                [6]
        dpeta     13                             // A = D + E13             [3]
        lsr       3                              // D = -1                  [3]
        add                                      // D += *A                 [2]
        dte       9                              // E9 = D                  [2]
        etd       8                              // D = E8                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x10                           // D |= 0x10               [6]
        dpeta     13                             // A = D + E13             [3]
        lde       1                              // E1 = *A                 [3]
        lit16     168                            // D = 0xA8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        etd       8                              // D = E8                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x18                           // D |= 0x18               [6]
        dpeta     13                             // A = D + E13             [3]
        lde       11                             // E11 = *A                [3]
        ldg       @non_standard_classes          // D = @non_standard_classes[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%91"                    //                         [4]
        jl        %"block%100"                   //                         [6]
%"block%91":                                     // block                   (3098)
        ldg       @class1                        // D = @class1             [24]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%94"                    //                         [4]
        jl        %._crit_edge150                //                         [6]
%"block%94":                                     // block                   (3138)
        ldg       @class2                        // D = @class2             [24]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%97"                    //                         [4]
        jmp       %._crit_edge151                //                         [4]
%"block%97":                                     // block                   (3176)
        ldg       @.str.34                       // D = @.str.34            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit       2                              // D = 0x2                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%._crit_edge151:                                 // block                   (3272)
        lsr       1                              // D = 0x1                 [3]
        dte       11                             // E11 = D                 [2]
        jmp       %"block%100"                   //                         [4]
%._crit_edge150:                                 // block                   (3281)
        lsr       3                              // D = -1                  [3]
        dte       11                             // E11 = D                 [2]
%"block%100":                                    // block                   (3286)
        lit16     144                            // D = 0x90                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       10                             // D = E10                 [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%105"                   //                         [4]
%"block%103":                                    // block                   (3303)
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     12                             // A = D + E12             [3]
        ate       3                              // E3 = A                  [2]
        jl        %"block%137"                   //                         [6]
%"block%105":                                    // block                   (3320)
        eta       12                             // A = E12                 [2]
        lde       1                              // E1 = *A                 [3]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        lsr       1                              // D = 0x1                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       38, %"block%109"               // E sgt D                 [5]
%._crit_edge152:                                 // block                   (3365)
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
        jmp       %"block%110"                   //                         [4]
%"block%109":                                    // block                   (3374)
        lsr       1                              // D = 0x1                 [3]
        dte       3                              // E3 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
%"block%128":                                    // block                   (3384)
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     12                             // A = D + E12             [3]
        ld                                       // D = *A                  [1]
        cmpe      1                              // D ?= E1                 [3]
        td0       38, %tn%5                      // D sge E                 [5]
%tn%3:                                           // block                   (3402)
        ete       3, 14                          // E14 = E3                [4]
%tn%5:                                           // block                   (3406)
        eta       3                              // A = E3                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       3                              // E3 = A                  [2]
        etd       2                              // D = E2                  [2]
        xore      3                              // D ^= E3                 [3]
        bdz       %"block%110"                   //                         [4]
        jmp       %"block%128"                   //                         [4]
%"block%110":                                    // block                   (3426)
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dte       15                             // E15 = D                 [2]
        lsr       1                              // D = 0x1                 [3]
        eta       15                             // A = E15                 [2]
        addm                                     // *A += D                 [2]
        lit16     160                            // D = 0xA0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        addm                                     // *A += D                 [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     12                             // A = D + E12             [3]
        ate       3                              // E3 = A                  [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     4                              // A = D + E4              [3]
        lde       1                              // E1 = *A                 [3]
        eta       3                              // A = E3                  [2]
        lde       2                              // E2 = *A                 [3]
        eta       15                             // A = E15                 [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     5                              // A = D + E5              [3]
        lde       1                              // E1 = *A                 [3]
        eta       15                             // A = E15                 [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        etd       11                             // D = E11                 [2]
        wrd                                      // *A = D                  [2]
        lit16     144                            // D = 0x90                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       10                             // D = E10                 [2]
        wrd                                      // *A = D                  [2] **** spill related
%"block%137":                                    // block                   (3555)
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     6                              // A = D + E6              [3]
        lde       1                              // E1 = *A                 [3]
        eta       3                              // A = E3                  [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        etd       9                              // D = E9                  [2]
        wrd                                      // *A = D                  [2]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     7                              // A = D + E7              [3]
        lde       1                              // E1 = *A                 [3]
        lit16     168                            // D = 0xA8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        eta       3                              // A = E3                  [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        etd       2                              // D = E2                  [2] **** spill related
        wrd                                      // *A = D                  [2]
        lit16     152                            // D = 0x98                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%18                         // A = *A                  [4] **** spill related
%tn%18:
        etd       9                              // D = E9                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        addm                                     // *A += D                 [2]
        lsr       1                              // D = 0x1                 [3]
        eta       3                              // A = E3                  [2]
        addm                                     // *A += D                 [2]
        eta       8                              // A = E8                  [2]
        aaimb     4                              // A += 4                  [3]
        ate       8                              // E8 = A                  [2]
        lit16     136                            // D = 0x88                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      8                              // D ?= E8                 [3]
        td0       39, %"block%157"               // E sge D                 [5]
        jl        %"block%73"                    //                         [6]
%"block%157":                                    // block                   (3685)
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        add                                      // D += *A                 [2] **** spill related
        dte       15                             // E15 = D                 [2]
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      2                              // D ?= E2                 [3]
        srlc      36                             // shift bit 36(eq) to 0   [4]
        muma1     0                              // D &= 1                  [4]
        ore       1                              // D |= E1                 [3]
        td0       0, %"block%163"                // if LSB is clear         [5]
        jl        %"block%187"                   //                         [6]
%"block%163":                                    // block                   (3756)
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        xor                                      // D ^= *A                 [2]
        bdz       %"block%165"                   //                         [4]
        jl        %"block%178"                   //                         [6]
%"block%165":                                    // block                   (3777)
        ete       13, 2                          // E2 = E13                [4]
        ldc       @free                          // D = @free               [15]
        jale      1                              // call @free              [3]
        ldg       @.str.48                       // D = @.str.48            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // E2 = call @malloc       [3]
        ete       2, 13                          // E13 = E2                [4]
        ete       13, 2                          // E2 = E13                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        ldg       @train_data                    // D = @train_data         [24]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        xor                                      // D ^= *A                 [2]
        bdz       %"block%174"                   //                         [4]
        jmp       %"block%172"                   //                         [4]
%"block%174":                                    // block                   (3989)
        ldg       @.str.50                       // D = @.str.50            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     136                            // D = 0x88                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        jl        %"block%187"                   //                         [6]
%"block%172":                                    // block                   (4090)
        ldg       @.str.49                       // D = @.str.49            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%178":                                    // block                   (4157)
        ete       13, 2                          // E2 = E13                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lit16     136                            // D = 0x88                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        ldg       @train_data                    // D = @train_data         [24]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lit16     136                            // D = 0x88                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%182"                   //                         [4]
        jmp       %"block%184"                   //                         [4]
%"block%182":                                    // block                   (4247)
        ldg       @.str.51                       // D = @.str.51            [24]
        dte       2                              // E2 = D                  [2]
        etd       15                             // D = E15                 [2]
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
%"block%184":                                    // block                   (4323)
        ldg       @.str.52                       // D = @.str.52            [24]
        dte       2                              // E2 = D                  [2]
        etd       15                             // D = E15                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
%"block%187":                                    // block                   (4419)
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      15                             // D ?= E15                [3]
        td0       43, %"block%51"                // E uge D                 [5]
%._crit_edge156:                                 // block                   (4435)
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        jl        %"block%57"                    //                         [6]
%"block%51":                                     // block                   (4454)
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%55"                    //                         [4]
        jl        %"block%326"                   //                         [6]
%"block%55":                                     // block                   (4491)
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
%"block%193":                                    // block                   (4525)
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        lde       3                              // E3 = *A                 [3]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     12                             // A = D + E12             [3]
        lde       4                              // E4 = *A                 [3]
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        addl      8                              // D += 8                  [6]
        dpeta     3                              // A = D + E3              [3]
        etd       4                              // D = E4                  [2]
        wrd                                      // *A = D                  [2]
        eta       2                              // A = E2                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       2                              // E2 = A                  [2]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      2                              // D ?= E2                 [3]
        td0       39, %"block%326"               // E sge D                 [5]
        jmp       %"block%193"                   //                         [4]
%"block%326":                                    // block                   (4630)
        ldg       @train_data                    // D = @train_data         [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldc       @fclose                        // D = @fclose             [15]
        jale      1                              // E2 = call @fclose       [3]
        ete       13, 2                          // E2 = E13                [4]
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
%tn%6:                                           // block                   (4739)
        eta       0                              // A = newFP               [2]
        lde       0                              // E0 = oldFP              [3]
        ate       11                             // E11 = newFP             [2]
        ldr       @_frame_buckets_+8             // D = bucket              [24]
        dtd2                                     // D2 = FP                 [2]
        dta                                      // A = D                   [2]
%tn%19:
        ld                                       // D = *bucket             [1]
        bdgtz     %tn%20                         // bucket valid?           [4]
        bdz       %tn%20                         // bucket empty?           [4]
        jmp       %tn%19                         // bucket locked           [4]
%tn%20:
        eta       11                             // A = newFP               [2]
        std                                      // *fp = free list         [2]
        swapd                                    //                         [2]
        dta                                      // A = D                   [2]
        swapd                                    //                         [2]
        cas       11                             // bucket changed?         [3]
        bnz       %tn%19                         // if bucket changed, try again[4]
        jmpe      1                              // return                  [3]
        .function_end                            // function size           (4807)
        .global   @populateTraining_featurepartitioned
        .text
@populateTraining_featurepartitioned:
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
        ldg       @.str.54                       // D = @.str.54            [24]
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
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // E2 = call @malloc       [3]
        ete       2, 13                          // E13 = E2                [4]
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%8"                     //                         [4]
        jmp       %"block%15"                    //                         [4]
%"block%8":                                      // block                   (581)
        lsr       0                              // D = 0x0                 [3]
        dte       1                              // E1 = D                  [2]
%"block%9":                                      // block                   (586)
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        eta       1                              // A = E1                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       1                              // E1 = A                  [2]
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      1                              // D ?= E1                 [3]
        td0       39, %"block%15"                // E sge D                 [5]
        jmp       %"block%9"                     //                         [4]
%"block%15":                                     // block                   (646)
        ldg       @train_data                    // D = @train_data         [24]
        dta                                      // A = D                   [2]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @train_data_path               // D = @train_data_path    [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldg       @.str.26                       // D = @.str.26            [24]
        dte       3                              // E3 = D                  [2]
        ldc       @fopen                         // D = @fopen              [15]
        jale      1                              // E2 = call @fopen        [3]
        ldg       @train_data                    // D = @train_data         [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2]
        eta       2                              // A = E2                  [2]
        baz       %"block%19"                    //                         [4]
        jmp       %"block%21"                    //                         [4]
%"block%19":                                     // block                   (790)
        ldg       @.str.27                       // D = @.str.27            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%21":                                     // block                   (857)
        ldg       @total_train_points            // D = @total_train_points [24]
        dta                                      // A = D                   [2]
        lde       15                             // E15 = *A                [3]
        etd       15                             // D = E15                 [2]
        sllc      2                              // D <<= 2                 [4]
        dte       14                             // E14 = D                 [2]
        lit16     457                            // D = 0x1C9               [6]
        sill      50048                          // D = 0x1C9C380           [6]
        cmpe      15                             // D ?= E15                [3]
        td1       38, %"block%25"                // E sgt D                 [5]
        jl        %"block%162"                   //                         [6]
%"block%25":                                     // block                   (920)
        lit16     457                            // D = 0x1C9               [6]
        sill      50048                          // D = 0x1C9C380           [6]
        dte       1                              // E1 = D                  [2]
        etd       15                             // D = E15                 [2]
        udive     1                              // D /= E1                 [3]
        dte       1                              // E1 = D                  [2]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lit16     -1832                          // D = 0xFFFFFFFFFFFFF8D8  [6]
        sill      61952                          // D = 0xFFFFFFFFF8D8F200  [6]
        multe     1                              // D *= E1                 [3]
        adde      14                             // D += E14                [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2] **** spill related
        bdz       %tn%9                          //                         [4]
        lsr       1                              // D = 1                   [3]
%tn%9:
        muma1     0                              // D &= 0x1                [4]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     14648                          // D = 0x3938              [6]
        sill      28672                          // D = 0x39387000          [6]
        dte       2                              // E2 = D                  [2]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // E2 = call @malloc       [3]
        ete       2, 12                          // E12 = E2                [4]
        eta       12                             // A = E12                 [2]
        baz       %"block%34"                    //                         [4]
        jmp       %"block%36"                    //                         [4]
%"block%34":                                     // block                   (1049)
        ldg       @.str.47                       // D = @.str.47            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%36":                                     // block                   (1116)
        ete       12, 2                          // E2 = E12                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lit16     1831                           // D = 0x727               [6]
        sill      3584                           // D = 0x7270E00           [6]
        dte       4                              // E4 = D                  [2]
        ldg       @train_data                    // D = @train_data         [24]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        bdnz      %"block%40"                    //                         [4]
%._crit_edge109:                                 // block                   (1199)
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
        jl        %"block%246"                   //                         [6]
%"block%40":                                     // block                   (1210)
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        cmpe      1                              // D ?= E1                 [3]
        srlc      36                             // shift bit 36(eq) to 0   [4]
        muma1     0                              // D &= 1                  [4]
        wrd                                      // *A = D                  [2] **** spill related
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       3                              // D = -1                  [3]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        sllc      3                              // D <<= 3                 [4]
        wrd                                      // *A = D                  [2] **** spill related
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     1831                           // D = 0x727               [6]
        sill      3584                           // D = 0x7270E00           [6]
        dte       14                             // E14 = D                 [2]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       3                              // D = -1                  [3]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
%"block%45":                                     // block                   (1338)
        etd       14                             // D = E14                 [2]
        bdgtz     %"block%54"                    //                         [4]
        jl        %"block%128"                   //                         [6]
%"block%54":                                     // block                   (1350)
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        lde       4                              // E4 = *A                 [3]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        ldg       @feat_deg_recip_stripped       // D = @feat_deg_recip_stripped[24]
        dta                                      // A = D                   [2]
        lde       6                              // E6 = *A                 [3]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        lde       7                              // E7 = *A                 [3]
        ldg       @train_c                       // D = @train_c            [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     136                            // D = 0x88                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       3                              // E3 = D                  [2]
%"block%60":                                     // block                   (1513)
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     12                             // A = D + E12             [3]
        lde       2                              // E2 = *A                 [3]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x8                            // D |= 0x8                [6]
        dpeta     12                             // A = D + E12             [3]
        lsr       3                              // D = -1                  [3]
        add                                      // D += *A                 [2]
        dte       8                              // E8 = D                  [2]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x10                           // D |= 0x10               [6]
        dpeta     12                             // A = D + E12             [3]
        lde       1                              // E1 = *A                 [3]
        lit16     144                            // D = 0x90                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x18                           // D |= 0x18               [6]
        dpeta     12                             // A = D + E12             [3]
        lde       10                             // E10 = *A                [3]
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        etd       8                              // D = E8                  [2]
        dive      1                              // D2 %= E1                [3]
        swapd                                    // D = D2                  [2]
        dte       9                              // E9 = D                  [2]
        ldg       @non_standard_classes          // D = @non_standard_classes[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%80"                    //                         [4]
        jmp       %"block%89"                    //                         [4]
%"block%80":                                     // block                   (1669)
        ldg       @class1                        // D = @class1             [24]
        dta                                      // A = D                   [2]
        etd       10                             // D = E10                 [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%83"                    //                         [4]
%._crit_edge112:                                 // block                   (1703)
        lsr       3                              // D = -1                  [3]
        dte       10                             // E10 = D                 [2]
        jmp       %"block%89"                    //                         [4]
%"block%83":                                     // block                   (1712)
        ldg       @class2                        // D = @class2             [24]
        dta                                      // A = D                   [2]
        etd       10                             // D = E10                 [2]
        xor                                      // D ^= *A                 [2]
        bdz       %._crit_edge113                //                         [4]
        jl        %"block%86"                    //                         [6]
%._crit_edge113:                                 // block                   (1752)
        lsr       1                              // D = 0x1                 [3]
        dte       10                             // E10 = D                 [2]
%"block%89":                                     // block                   (1757)
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%92"                    //                         [4]
        jl        %"block%109"                   //                         [6]
%"block%92":                                     // block                   (1780)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       1                              // D = E1                  [2]
        bdgtz     %"block%95"                    //                         [4]
%._crit_edge115:                                 // block                   (1793)
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        jl        %"block%109"                   //                         [6]
%"block%95":                                     // block                   (1812)
        lsr       0                              // D = 0x0                 [3]
        dte       1                              // E1 = D                  [2]
%"block%96":                                     // block                   (1817)
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     7                              // A = D + E7              [3]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       11                             // E11 = D                 [2]
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        ld                                       // D = *A                  [1]
        eta       11                             // A = E11                 [2]
        wrd                                      // *A = D                  [2]
        lit16     136                            // D = 0x88                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       10                             // D = E10                 [2]
        wrd                                      // *A = D                  [2]
        eta       1                              // A = E1                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       1                              // E1 = A                  [2]
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      1                              // D ?= E1                 [3]
        td0       39, %.loopexit102              // E sge D                 [5]
        jmp       %"block%96"                    //                         [4]
%.loopexit102:                                   // block                   (1929)
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2] **** spill related
%"block%109":                                    // block                   (1942)
        etd       9                              // D = E9                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        ate       1                              // E1 = A                  [2]
        etd       9                              // D = E9                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     4                              // A = D + E4              [3]
        lde       2                              // E2 = *A                 [3]
        eta       1                              // A = E1                  [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        etd       8                              // D = E8                  [2]
        wrd                                      // *A = D                  [2]
        etd       9                              // D = E9                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     5                              // A = D + E5              [3]
        lde       2                              // E2 = *A                 [3]
        lit16     144                            // D = 0x90                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       9                              // E9 = *A                 [3] **** spill related
        eta       1                              // A = E1                  [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        etd       9                              // D = E9                  [2] **** spill related
        wrd                                      // *A = D                  [2]
        etd       8                              // D = E8                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     6                              // A = D + E6              [3]
        lsr       1                              // D = 0x1                 [3]
        addm                                     // *A += D                 [2]
        lsr       1                              // D = 0x1                 [3]
        eta       1                              // A = E1                  [2]
        addm                                     // *A += D                 [2]
        eta       3                              // A = E3                  [2]
        aaimb     4                              // A += 4                  [3]
        ate       3                              // E3 = A                  [2]
        etd       14                             // D = E14                 [2]
        cmpe      3                              // D ?= E3                 [3]
        td1       39, %tn%10                     // E slt D                 [5]
        jmp       %"block%128"                   //                         [4]
%tn%10:
        jl        %"block%60"                    //                         [6]
%"block%86":                                     // block                   (2065)
        ldg       @.str.34                       // D = @.str.34            [24]
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
%"block%128":                                    // block                   (2161)
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      2                              // D ?= E2                 [3]
        srlc      36                             // shift bit 36(eq) to 0   [4]
        muma1     0                              // D &= 1                  [4]
        ore       1                              // D |= E1                 [3]
        td0       0, %"block%134"                // if LSB is clear         [5]
        jl        %"block%156"                   //                         [6]
%"block%134":                                    // block                   (2239)
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        xor                                      // D ^= *A                 [2]
        bdz       %"block%136"                   //                         [4]
        jl        %"block%147"                   //                         [6]
%"block%136":                                    // block                   (2270)
        ete       12, 2                          // E2 = E12                [4]
        ldc       @free                          // D = @free               [15]
        jale      1                              // call @free              [3]
        ldg       @.str.48                       // D = @.str.48            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // E2 = call @malloc       [3]
        ete       2, 12                          // E12 = E2                [4]
        ete       12, 2                          // E2 = E12                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        ldg       @train_data                    // D = @train_data         [24]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%143"                   //                         [4]
%"block%145":                                    // block                   (2478)
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       14                             // E14 = *A                [3] **** spill related
        jl        %"block%156"                   //                         [6]
%"block%143":                                    // block                   (2494)
        ldg       @.str.49                       // D = @.str.49            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%147":                                    // block                   (2561)
        ete       12, 2                          // E2 = E12                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        ete       14, 4                          // E4 = E14                [4]
        ldg       @train_data                    // D = @train_data         [24]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        etd       14                             // D = E14                 [2]
        xore      2                              // D ^= E2                 [3]
        bdnz      %"block%151"                   //                         [4]
        jmp       %"block%153"                   //                         [4]
%"block%151":                                    // block                   (2635)
        ldg       @.str.51                       // D = @.str.51            [24]
        dte       2                              // E2 = D                  [2]
        lit       120                            // D = 0x78                [4] **** spill related
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
%"block%153":                                    // block                   (2717)
        ldg       @.str.52                       // D = @.str.52            [24]
        dte       2                              // E2 = D                  [2]
        lit       120                            // D = 0x78                [4] **** spill related
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
%"block%156":                                    // block                   (2819)
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      1                              // D ?= E1                 [3]
        td1       43, %._crit_edge119            // E ult D                 [5]
        jl        %"block%246"                   //                         [6]
%._crit_edge119:                                 // block                   (2851)
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        jl        %"block%45"                    //                         [6]
%"block%162":                                    // block                   (2878)
        etd       15                             // D = E15                 [2]
        sllc      5                              // D <<= 5                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // E2 = call @malloc       [3]
        ete       2, 12                          // E12 = E2                [4]
        ete       12, 2                          // E2 = E12                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        ete       14, 4                          // E4 = E14                [4]
        ldg       @train_data                    // D = @train_data         [24]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        etd       14                             // D = E14                 [2]
        xore      2                              // D ^= E2                 [3]
        bdnz      %"block%168"                   //                         [4]
        jmp       %"block%170"                   //                         [4]
%"block%168":                                    // block                   (2982)
        ldg       @.str.53                       // D = @.str.53            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%170":                                    // block                   (3049)
        etd       15                             // D = E15                 [2]
        bdgtz     %"block%172"                   //                         [4]
%._crit_edge120:                                 // block                   (3055)
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
        jl        %"block%246"                   //                         [6]
%"block%172":                                    // block                   (3066)
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        lde       6                              // E6 = *A                 [3]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        lde       7                              // E7 = *A                 [3]
        ldg       @feat_deg_recip_stripped       // D = @feat_deg_recip_stripped[24]
        dta                                      // A = D                   [2]
        lde       8                              // E8 = *A                 [3]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        lde       9                              // E9 = *A                 [3]
        ldg       @train_c                       // D = @train_c            [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     152                            // D = 0x98                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
        lsr       3                              // D = -1                  [3]
        dte       11                             // E11 = D                 [2]
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
%"block%178":                                    // block                   (3239)
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     12                             // A = D + E12             [3]
        lde       10                             // E10 = *A                [3]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x8                            // D |= 0x8                [6]
        dpeta     12                             // A = D + E12             [3]
        lsr       3                              // D = -1                  [3]
        add                                      // D += *A                 [2]
        dte       5                              // E5 = D                  [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x10                           // D |= 0x10               [6]
        dpeta     12                             // A = D + E12             [3]
        lde       1                              // E1 = *A                 [3]
        lit16     160                            // D = 0xA0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x18                           // D |= 0x18               [6]
        dpeta     12                             // A = D + E12             [3]
        lde       4                              // E4 = *A                 [3]
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        etd       5                              // D = E5                  [2]
        dive      1                              // D2 %= E1                [3]
        swapd                                    // D = D2                  [2]
        dte       3                              // E3 = D                  [2]
        ldg       @non_standard_classes          // D = @non_standard_classes[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%198"                   //                         [4]
        jl        %"block%207"                   //                         [6]
%"block%198":                                    // block                   (3397)
        ldg       @class1                        // D = @class1             [24]
        dta                                      // A = D                   [2]
        etd       4                              // D = E4                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%201"                   //                         [4]
%._crit_edge122:                                 // block                   (3431)
        lsr       3                              // D = -1                  [3]
        dte       4                              // E4 = D                  [2]
        jl        %"block%207"                   //                         [6]
%"block%201":                                    // block                   (3442)
        ldg       @class2                        // D = @class2             [24]
        dta                                      // A = D                   [2]
        etd       4                              // D = E4                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%204"                   //                         [4]
        jmp       %._crit_edge123                //                         [4]
%"block%204":                                    // block                   (3480)
        ldg       @.str.34                       // D = @.str.34            [24]
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
%._crit_edge123:                                 // block                   (3576)
        lsr       1                              // D = 0x1                 [3]
        dte       4                              // E4 = D                  [2]
%"block%207":                                    // block                   (3581)
        etd       11                             // D = E11                 [2]
        xore      10                             // D ^= E10                [3]
        bdnz      %"block%210"                   //                         [4]
        jl        %"block%227"                   //                         [6]
%"block%210":                                    // block                   (3596)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       1                              // D = E1                  [2]
        bdgtz     %"block%213"                   //                         [4]
%._crit_edge125:                                 // block                   (3609)
        ete       10, 11                         // E11 = E10               [4]
        jmp       %"block%227"                   //                         [4]
%"block%213":                                    // block                   (3617)
        lsr       0                              // D = 0x0                 [3]
        dte       1                              // E1 = D                  [2]
%"block%214":                                    // block                   (3622)
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     9                              // A = D + E9              [3]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       11                             // E11 = D                 [2]
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        ld                                       // D = *A                  [1]
        eta       11                             // A = E11                 [2]
        wrd                                      // *A = D                  [2]
        lit16     152                            // D = 0x98                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2] **** spill related
        dta                                      // A = D                   [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       4                              // D = E4                  [2]
        wrd                                      // *A = D                  [2]
        eta       1                              // A = E1                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       1                              // E1 = A                  [2]
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      1                              // D ?= E1                 [3]
        td0       39, %.loopexit105              // E sge D                 [5]
        jmp       %"block%214"                   //                         [4]
%.loopexit105:                                   // block                   (3734)
        ete       10, 11                         // E11 = E10               [4]
%"block%227":                                    // block                   (3738)
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        ate       4                              // E4 = A                  [2]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     6                              // A = D + E6              [3]
        lde       1                              // E1 = *A                 [3]
        eta       4                              // A = E4                  [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        etd       5                              // D = E5                  [2]
        wrd                                      // *A = D                  [2]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     7                              // A = D + E7              [3]
        lde       1                              // E1 = *A                 [3]
        lit16     160                            // D = 0xA0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       3                              // E3 = *A                 [3] **** spill related
        eta       4                              // A = E4                  [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        etd       3                              // D = E3                  [2] **** spill related
        wrd                                      // *A = D                  [2]
        etd       5                              // D = E5                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     8                              // A = D + E8              [3]
        lsr       1                              // D = 0x1                 [3]
        addm                                     // *A += D                 [2]
        lsr       1                              // D = 0x1                 [3]
        eta       4                              // A = E4                  [2]
        addm                                     // *A += D                 [2]
        eta       2                              // A = E2                  [2]
        aaimb     4                              // A += 4                  [3]
        ate       2                              // E2 = A                  [2]
        etd       14                             // D = E14                 [2]
        cmpe      2                              // D ?= E2                 [3]
        td0       39, %"block%246"               // E sge D                 [5]
        jl        %"block%178"                   //                         [6]
%"block%246":                                    // block                   (3857)
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%251"                   //                         [4]
        jl        %"block%264"                   //                         [6]
%"block%251":                                    // block                   (3894)
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
%"block%253":                                    // block                   (3928)
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        lde       3                              // E3 = *A                 [3]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     13                             // A = D + E13             [3]
        lde       4                              // E4 = *A                 [3]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        addl      8                              // D += 8                  [6]
        dpeta     3                              // A = D + E3              [3]
        etd       4                              // D = E4                  [2]
        wrd                                      // *A = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        eta       3                              // A = E3                  [2]
        wrd                                      // *A = D                  [2]
        eta       2                              // A = E2                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       2                              // E2 = A                  [2]
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      2                              // D ?= E2                 [3]
        td0       39, %"block%264"               // E sge D                 [5]
        jmp       %"block%253"                   //                         [4]
%"block%264":                                    // block                   (4024)
        ldg       @train_data                    // D = @train_data         [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldc       @fclose                        // D = @fclose             [15]
        jale      1                              // E2 = call @fclose       [3]
        ete       12, 2                          // E2 = E12                [4]
        ldc       @free                          // D = @free               [15]
        jale      1                              // call @free              [3]
        ldg       @.str.55                       // D = @.str.55            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       64                             // D = 0x40                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ldg       @.str.56                       // D = @.str.56            [24]
        dte       2                              // E2 = D                  [2]
        etd       15                             // D = E15                 [2]
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
%tn%0:                                           // block                   (4286)
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
        .function_end                            // function size           (4354)
        .global   @init_cluster
        .text
@init_cluster:
        .function_begin                          // entry                   (0)
                                                 // empty prologue          [0]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%2"                     //                         [4]
        jl        %"block%12"                    //                         [6]
%"block%2":                                      // block                   (37)
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        ldg       @working_vec                   // D = @working_vec        [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       4                              // E4 = *A                 [3]
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       6                              // E6 = D                  [2]
%"block%15":                                     // block                   (159)
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     3                              // A = D + E3              [3]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     4                              // A = D + E4              [3]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     5                              // A = D + E5              [3]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        eta       6                              // A = E6                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       6                              // E6 = A                  [2]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      6                              // D ?= E6                 [3]
        td0       39, %"block%12"                // E sge D                 [5]
        jmp       %"block%15"                    //                         [4]
%"block%12":                                     // block                   (247)
        ldg       @using_clusters                // D = @using_clusters     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%23"                    //                         [4]
        jl        %"block%55"                    //                         [6]
%"block%23":                                     // block                   (284)
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%26"                    //                         [4]
        jmp       %"block%30"                    //                         [4]
%"block%26":                                     // block                   (319)
        ldg       @accuracies                    // D = @accuracies         [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       4                              // E4 = D                  [2]
%"block%47":                                     // block                   (363)
        etd       4                              // D = E4                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     3                              // A = D + E3              [3]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        eta       4                              // A = E4                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       4                              // E4 = A                  [2]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      4                              // D ?= E4                 [3]
        td0       39, %"block%30"                // E sge D                 [5]
        jmp       %"block%47"                    //                         [4]
%"block%30":                                     // block                   (423)
        ldg       @cluster_samples               // D = @cluster_samples    [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @total_evaluated_sample_count  // D = @total_evaluated_sample_count[24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @samples_since_token           // D = @samples_since_token[24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        lsr       3                              // D = -1                  [3]
        add                                      // D += *A                 [2]
        xore      2                              // D ^= E2                 [3]
        bdnz      %tn%1                          //                         [4]
%tn%0:                                           // block                   (584)
        lsr       0                              // D = 0x0                 [3]
        dte       3                              // E3 = D                  [2]
        jmp       %tn%2                          //                         [4]
%tn%1:                                           // block                   (593)
        eta       2                              // A = E2                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       3                              // E3 = A                  [2]
%tn%2:                                           // block                   (600)
        ldg       @upstream                      // D = @upstream           [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       3                              // D = E3                  [2]
        wrd                                      // *A = D                  [2]
        ldg       @token                         // D = @token              [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       3                              // E3 = D                  [2]
        eta       2                              // A = E2                  [2]
        baz       %"block%53"                    //                         [4]
%"block%54":                                     // block                   (682)
        lsr       0                              // D = 0x0                 [3]
        eta       3                              // A = E3                  [2]
        wrd                                      // *A = D                  [2]
        jmpe      1                              // return void             [3]
%"block%53":                                     // block                   (692)
        lsr       1                              // D = 0x1                 [3]
        eta       3                              // A = E3                  [2]
        wrd                                      // *A = D                  [2]
        jmpe      1                              // return void             [3]
%"block%55":                                     // block                   (702)
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%58"                    //                         [4]
        jmp       %"block%68"                    //                         [4]
%"block%58":                                     // block                   (737)
        ldg       @accuracies                    // D = @accuracies         [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       3                              // E3 = D                  [2]
%"block%62":                                     // block                   (781)
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        eta       3                              // A = E3                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       3                              // E3 = A                  [2]
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      3                              // D ?= E3                 [3]
        td0       39, %"block%68"                // E sge D                 [5]
        jmp       %"block%62"                    //                         [4]
%"block%68":                                     // block                   (841)
        jmpe      1                              // return void             [3]
        .function_end                            // function size           (844)
        .global   @fdeg_copy2nodes
        .text
@fdeg_copy2nodes:
        .function_begin                          // entry                   (0)
                                                 // empty prologue          [0]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      3                              // D ?= E3                 [3]
        td0       39, %"block%2"                 // E sge D                 [5]
        jmp       %"block%3"                     //                         [4]
%"block%2":                                      // block                   (44)
        lsr       0                              // D = 0x0                 [3]
        dte       3                              // E3 = D                  [2]
%"block%4":                                      // block                   (49)
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        lde       4                              // E4 = *A                 [3]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     4                              // A = D + E4              [3]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       5                              // E5 = D                  [2]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        eta       4                              // A = E4                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        eta       5                              // A = E5                  [2]
        radd                                     // *A += D                 [2]
        eta       3                              // A = E3                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       4                              // E4 = A                  [2]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      3                              // D ?= E3                 [3]
        td0       39, %"block%3"                 // E sge D                 [5]
%._crit_edge9:                                   // block                   (156)
        ete       4, 3                           // E3 = E4                 [4]
        jmp       %"block%4"                     //                         [4]
%"block%3":                                      // block                   (164)
        jmpe      1                              // return void             [3]
        .function_end                            // function size           (167)
        .global   @init
        .text
@init:
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
        dta                                      // A = &reg save area      [2]
        lsr       0                              // D = 0x0                 [3]
        std                                      // unlock reg save area    [2]
%tn%2:
                                                 // end of prologue         (334)
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     584                            // D = 0x248               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       14                             // D = E14                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     576                            // D = 0x240               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       13                             // D = E13                 [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     568                            // D = 0x238               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        ate       13                             // E13 = A                 [2]
        eta       13                             // A = E13                 [2]
        lsr       0                              // D = 0x0                 [3]
        stdia                                    // thread_count = 0        [2]
        std                                      // continuation_valid = 0  [2]
        lit16     600                            // D = 0x258               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       0                              // D = E0                  [2]
        addl      552                            // D += 552                [6]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     608                            // D = 0x260               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       0                              // D = E0                  [2]
        addl      560                            // D += 560                [6]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       15                             // D = num_nodes()         [3]
        dte       14                             // E14 = D                 [2]
        ete       14, 2                          // E2 = E14                [4]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_malloc2d                   // D = @mw_malloc2d        [15]
        jale      1                              // E2 = call @mw_malloc2d  [3]
        lit16     616                            // D = 0x268               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        cmpe      14                             // D ?= E14                [3]
        srlc      36                             // shift bit 36(eq) to 0   [4]
        muma1     0                              // D &= 1                  [4]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        td0       0, %"block%7"                  // if LSB is clear         [5]
        jmp       %"block%8"                     //                         [4]
%"block%7":                                      // block                   (532)
        lsr       0                              // D = 0x0                 [3]
        dte       15                             // E15 = D                 [2]
%"block%13":                                     // block                   (537)
        ldg       @accuracies                    // D = @accuracies         [24]
        dte       2                              // E2 = D                  [2]
        ete       15, 3                          // E3 = E15                [4]
        ldc       @mw_get_nth                    // D = @mw_get_nth         [15]
        jale      1                              // E2 = call @mw_get_nth   [3]
        lit16     616                            // D = 0x268               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       2                              // A = E2                  [2]
        wrd                                      // *A = D                  [2]
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       14                             // D = E14                 [2]
        xore      15                             // D ^= E15                [3]
        bdz       %"block%8"                     //                         [4]
        jmp       %"block%13"                    //                         [4]
%"block%8":                                      // block                   (619)
        ldg       @total_train_points            // D = @total_train_points [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        inttofp   1                              // D = double(D)           [3]
        dte       1                              // E1 = D                  [2]
        ldg       @using_clusters                // D = @using_clusters     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%19"                    //                         [4]
        jl        %"block%30"                    //                         [6]
%"block%19":                                     // block                   (688)
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        inttofp   1                              // D = double(D)           [3]
        dte       2                              // E2 = D                  [2]
        etd       1                              // D = E1                  [2]
        fpdive    2                              // D /= E2                 [4]
        dte       1                              // E1 = D                  [2]
        lit16     16369                          // D = 0x3FF1              [6]
        sill      39321                          // D = 0x3FF19999          [6]
        sill      39321                          // D = 0x3FF199999999      [6]
        sill      39322                          // D = 0x3FF199999999999A  [6]
        fpmule    1                              // D *= E1                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @ceil                          // D = @ceil               [15]
        jale      1                              // E2 = call @ceil         [3]
        ete       2, 1                           // E1 = E2                 [4]
        ldg       @non_zeros_per_node            // D = @non_zeros_per_node [24]
        dte       2                              // E2 = D                  [2]
        etd       1                              // D = E1                  [2]
        fptoint                                  // D = int(D)              [3]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        ldg       @.str.57                       // D = @.str.57            [24]
        dte       2                              // E2 = D                  [2]
        ldg       @non_zeros_per_node            // D = @non_zeros_per_node [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        ldg       @stdout                        // D = @stdout             [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        jl        %"block%41"                    //                         [6]
%"block%30":                                     // block                   (987)
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        inttofp   1                              // D = double(D)           [3]
        dte       2                              // E2 = D                  [2]
        etd       1                              // D = E1                  [2]
        fpdive    2                              // D /= E2                 [4]
        dte       1                              // E1 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      62                             // D = 0x4000000000000000  [4]
        fpmule    1                              // D *= E1                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @ceil                          // D = @ceil               [15]
        jale      1                              // E2 = call @ceil         [3]
        ete       2, 1                           // E1 = E2                 [4]
        ldg       @non_zeros_per_node            // D = @non_zeros_per_node [24]
        dte       2                              // E2 = D                  [2]
        etd       1                              // D = E1                  [2]
        fptoint                                  // D = int(D)              [3]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        ldg       @.str.58                       // D = @.str.58            [24]
        dte       2                              // E2 = D                  [2]
        ldg       @non_zeros_per_node            // D = @non_zeros_per_node [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        ldg       @stdout                        // D = @stdout             [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
%"block%41":                                     // block                   (1263)
        ete       14, 2                          // E2 = E14                [4]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_malloc2d                   // D = @mw_malloc2d        [15]
        jale      1                              // E2 = call @mw_malloc2d  [3]
        lit16     640                            // D = 0x280               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        td0       0, %"block%46"                 // if LSB is clear         [5]
        jl        %"block%47"                    //                         [6]
%"block%46":                                     // block                   (1352)
        lsr       0                              // D = 0x0                 [3]
        dte       15                             // E15 = D                 [2]
%"block%55":                                     // block                   (1357)
        ldg       @model_vec                     // D = @model_vec          [24]
        dte       2                              // E2 = D                  [2]
        ete       15, 3                          // E3 = E15                [4]
        ldc       @mw_get_nth                    // D = @mw_get_nth         [15]
        jale      1                              // E2 = call @mw_get_nth   [3]
        lit16     640                            // D = 0x280               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       2                              // A = E2                  [2]
        wrd                                      // *A = D                  [2]
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       14                             // D = E14                 [2]
        xore      15                             // D ^= E15                [3]
        bdz       %"block%51"                    //                         [4]
        jmp       %"block%55"                    //                         [4]
%"block%51":                                     // block                   (1439)
        ete       14, 2                          // E2 = E14                [4]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_malloc2d                   // D = @mw_malloc2d        [15]
        jale      1                              // E2 = call @mw_malloc2d  [3]
        lit16     696                            // D = 0x2B8               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       15                             // E15 = D                 [2]
%"block%67":                                     // block                   (1512)
        ldg       @working_vec                   // D = @working_vec        [24]
        dte       2                              // E2 = D                  [2]
        ete       15, 3                          // E3 = E15                [4]
        ldc       @mw_get_nth                    // D = @mw_get_nth         [15]
        jale      1                              // E2 = call @mw_get_nth   [3]
        lit16     696                            // D = 0x2B8               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       2                              // A = E2                  [2]
        wrd                                      // *A = D                  [2]
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       14                             // D = E14                 [2]
        xore      15                             // D ^= E15                [3]
        bdz       %tn%9                          //                         [4]
        jmp       %"block%67"                    //                         [4]
%tn%9:
        jmp       %"block%61"                    //                         [4]
%"block%47":                                     // block                   (1598)
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_malloc2d                   // D = @mw_malloc2d        [15]
        jale      1                              // E2 = call @mw_malloc2d  [3]
%"block%61":                                     // block                   (1654)
        ete       14, 2                          // E2 = E14                [4]
        ldg       @samples_per_cluster           // D = @samples_per_cluster[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        addl      8                              // D += 8                  [6]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_malloc2d                   // D = @mw_malloc2d        [15]
        jale      1                              // E2 = call @mw_malloc2d  [3]
        lit16     648                            // D = 0x288               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        td1       0, %"block%103"                // if LSB is set           [5]
        jl        %"block%66"                    //                         [6]
%"block%103":                                    // block                   (1749)
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
        ldg       @samples_per_cluster           // D = @samples_per_cluster[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_malloc2d                   // D = @mw_malloc2d        [15]
        jale      1                              // E2 = call @mw_malloc2d  [3]
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
        ldg       @non_zeros_per_node            // D = @non_zeros_per_node [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_malloc2d                   // D = @mw_malloc2d        [15]
        jale      1                              // E2 = call @mw_malloc2d  [3]
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
        ldg       @non_zeros_per_node            // D = @non_zeros_per_node [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_malloc2d                   // D = @mw_malloc2d        [15]
        jale      1                              // E2 = call @mw_malloc2d  [3]
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_malloc2d                   // D = @mw_malloc2d        [15]
        jale      1                              // E2 = call @mw_malloc2d  [3]
        jl        %"block%126"                   //                         [6]
%"block%66":                                     // block                   (1979)
        lsr       0                              // D = 0x0                 [3]
        dte       15                             // E15 = D                 [2]
%"block%77":                                     // block                   (1984)
        ldg       @train_s                       // D = @train_s            [24]
        dte       2                              // E2 = D                  [2]
        ete       15, 3                          // E3 = E15                [4]
        ldc       @mw_get_nth                    // D = @mw_get_nth         [15]
        jale      1                              // E2 = call @mw_get_nth   [3]
        lit16     648                            // D = 0x288               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       2                              // A = E2                  [2]
        wrd                                      // *A = D                  [2]
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       14                             // D = E14                 [2]
        xore      15                             // D ^= E15                [3]
        bdz       %"block%73"                    //                         [4]
        jmp       %"block%77"                    //                         [4]
%"block%73":                                     // block                   (2066)
        ete       14, 2                          // E2 = E14                [4]
        ldg       @samples_per_cluster           // D = @samples_per_cluster[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_malloc2d                   // D = @mw_malloc2d        [15]
        jale      1                              // E2 = call @mw_malloc2d  [3]
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       15                             // E15 = D                 [2]
%"block%87":                                     // block                   (2139)
        ldg       @train_c                       // D = @train_c            [24]
        dte       2                              // E2 = D                  [2]
        ete       15, 3                          // E3 = E15                [4]
        ldc       @mw_get_nth                    // D = @mw_get_nth         [15]
        jale      1                              // E2 = call @mw_get_nth   [3]
        lit16     664                            // D = 0x298               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       2                              // A = E2                  [2]
        wrd                                      // *A = D                  [2]
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       14                             // D = E14                 [2]
        xore      15                             // D ^= E15                [3]
        bdz       %"block%83"                    //                         [4]
        jmp       %"block%87"                    //                         [4]
%"block%83":                                     // block                   (2221)
        ete       14, 2                          // E2 = E14                [4]
        ldg       @non_zeros_per_node            // D = @non_zeros_per_node [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_malloc2d                   // D = @mw_malloc2d        [15]
        jale      1                              // E2 = call @mw_malloc2d  [3]
        lit16     672                            // D = 0x2A0               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       15                             // E15 = D                 [2]
%"block%97":                                     // block                   (2294)
        ldg       @train_f                       // D = @train_f            [24]
        dte       2                              // E2 = D                  [2]
        ete       15, 3                          // E3 = E15                [4]
        ldc       @mw_get_nth                    // D = @mw_get_nth         [15]
        jale      1                              // E2 = call @mw_get_nth   [3]
        lit16     672                            // D = 0x2A0               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       2                              // A = E2                  [2]
        wrd                                      // *A = D                  [2]
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       14                             // D = E14                 [2]
        xore      15                             // D ^= E15                [3]
        bdz       %"block%93"                    //                         [4]
        jmp       %"block%97"                    //                         [4]
%"block%93":                                     // block                   (2376)
        ete       14, 2                          // E2 = E14                [4]
        ldg       @non_zeros_per_node            // D = @non_zeros_per_node [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_malloc2d                   // D = @mw_malloc2d        [15]
        jale      1                              // E2 = call @mw_malloc2d  [3]
        lit16     680                            // D = 0x2A8               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       15                             // E15 = D                 [2]
%"block%120":                                    // block                   (2449)
        ldg       @train_v                       // D = @train_v            [24]
        dte       2                              // E2 = D                  [2]
        ete       15, 3                          // E3 = E15                [4]
        ldc       @mw_get_nth                    // D = @mw_get_nth         [15]
        jale      1                              // E2 = call @mw_get_nth   [3]
        lit16     680                            // D = 0x2A8               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       2                              // A = E2                  [2]
        wrd                                      // *A = D                  [2]
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       14                             // D = E14                 [2]
        xore      15                             // D ^= E15                [3]
        bdz       %"block%116"                   //                         [4]
        jmp       %"block%120"                   //                         [4]
%"block%116":                                    // block                   (2531)
        ete       14, 2                          // E2 = E14                [4]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_malloc2d                   // D = @mw_malloc2d        [15]
        jale      1                              // E2 = call @mw_malloc2d  [3]
        lit16     688                            // D = 0x2B0               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       15                             // E15 = D                 [2]
%"block%129":                                    // block                   (2604)
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dte       2                              // E2 = D                  [2]
        ete       15, 3                          // E3 = E15                [4]
        ldc       @mw_get_nth                    // D = @mw_get_nth         [15]
        jale      1                              // E2 = call @mw_get_nth   [3]
        lit16     688                            // D = 0x2B0               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       2                              // A = E2                  [2]
        wrd                                      // *A = D                  [2]
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       14                             // D = E14                 [2]
        xore      15                             // D ^= E15                [3]
        bdz       %"block%126"                   //                         [4]
        jmp       %"block%129"                   //                         [4]
%"block%126":                                    // block                   (2686)
        ldg       @using_clusters                // D = @using_clusters     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%135"                   //                         [4]
        jl        %"block%146"                   //                         [6]
%"block%135":                                    // block                   (2723)
        ete       14, 2                          // E2 = E14                [4]
        ldc       @mw_malloc1dlong               // D = @mw_malloc1dlong    [15]
        jale      1                              // E2 = call @mw_malloc1dlong[3]
        ete       2, 3                           // E3 = E2                 [4]
        ldg       @total_evaluated_sample_count  // D = @total_evaluated_sample_count[24]
        dte       2                              // E2 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        ete       14, 2                          // E2 = E14                [4]
        ldc       @mw_malloc1dlong               // D = @mw_malloc1dlong    [15]
        jale      1                              // E2 = call @mw_malloc1dlong[3]
        ete       2, 3                           // E3 = E2                 [4]
        ldg       @cluster_samples               // D = @cluster_samples    [24]
        dte       2                              // E2 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        ete       14, 2                          // E2 = E14                [4]
        ldc       @mw_malloc1dlong               // D = @mw_malloc1dlong    [15]
        jale      1                              // E2 = call @mw_malloc1dlong[3]
        ete       2, 3                           // E3 = E2                 [4]
        ldg       @upstream                      // D = @upstream           [24]
        dte       2                              // E2 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        ete       14, 2                          // E2 = E14                [4]
        ldc       @mw_malloc1dlong               // D = @mw_malloc1dlong    [15]
        jale      1                              // E2 = call @mw_malloc1dlong[3]
        ete       2, 3                           // E3 = E2                 [4]
        ldg       @token                         // D = @token              [24]
        dte       2                              // E2 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        ete       14, 2                          // E2 = E14                [4]
        ldc       @mw_malloc1dlong               // D = @mw_malloc1dlong    [15]
        jale      1                              // E2 = call @mw_malloc1dlong[3]
        ete       2, 3                           // E3 = E2                 [4]
        ldg       @samples_since_token           // D = @samples_since_token[24]
        dte       2                              // E2 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        jmp       %"block%150"                   //                         [4]
%"block%146":                                    // block                   (3077)
        ldg       @threads_per_cluster           // D = @threads_per_cluster[24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldc       @mw_malloc1dlong               // D = @mw_malloc1dlong    [15]
        jale      1                              // E2 = call @mw_malloc1dlong[3]
        ete       2, 3                           // E3 = E2                 [4]
        ldg       @gradients                     // D = @gradients          [24]
        dte       2                              // E2 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
%"block%150":                                    // block                   (3172)
        ldg       @test_sample_count             // D = @test_sample_count  [24]
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        add                                      // D += *A                 [2]
        dte       2                              // E2 = D                  [2]
        ldc       @mw_malloc1dlong               // D = @mw_malloc1dlong    [15]
        jale      1                              // E2 = call @mw_malloc1dlong[3]
        ete       2, 3                           // E3 = E2                 [4]
        ldg       @test_s_stripped               // D = @test_s_stripped    [24]
        dte       2                              // E2 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        ldg       @total_test_points             // D = @total_test_points  [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldc       @mw_malloc1dlong               // D = @mw_malloc1dlong    [15]
        jale      1                              // E2 = call @mw_malloc1dlong[3]
        ete       2, 3                           // E3 = E2                 [4]
        ldg       @test_f_stripped               // D = @test_f_stripped    [24]
        dte       2                              // E2 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        ldg       @total_test_points             // D = @total_test_points  [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldc       @mw_malloc1dlong               // D = @mw_malloc1dlong    [15]
        jale      1                              // E2 = call @mw_malloc1dlong[3]
        ete       2, 3                           // E3 = E2                 [4]
        ldg       @test_v_stripped               // D = @test_v_stripped    [24]
        dte       2                              // E2 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        ldg       @test_sample_count             // D = @test_sample_count  [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldc       @mw_malloc1dlong               // D = @mw_malloc1dlong    [15]
        jale      1                              // E2 = call @mw_malloc1dlong[3]
        ete       2, 3                           // E3 = E2                 [4]
        ldg       @test_c_stripped               // D = @test_c_stripped    [24]
        dte       2                              // E2 = D                  [2]
        ldc       @mw_replicated_init            // D = @mw_replicated_init [15]
        jale      1                              // call @mw_replicated_init[3]
        ldg       @multi_file_load               // D = @multi_file_load    [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%166"                   //                         [4]
        jl        %"block%177"                   //                         [6]
%"block%166":                                    // block                   (3593)
        ete       14, 2                          // E2 = E14                [4]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        sllc      3                              // D <<= 3                 [4]
        dte       3                              // E3 = D                  [2]
        ldc       @mw_malloc2d                   // D = @mw_malloc2d        [15]
        jale      1                              // E2 = call @mw_malloc2d  [3]
        lit16     656                            // D = 0x290               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     624                            // D = 0x270               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        td0       0, %"block%170"                // if LSB is clear         [5]
        jmp       %"block%177"                   //                         [4]
%"block%170":                                    // block                   (3680)
        lsr       0                              // D = 0x0                 [3]
        dte       15                             // E15 = D                 [2]
%"block%171":                                    // block                   (3685)
        ldg       @data_read_buffer              // D = @data_read_buffer   [24]
        dte       2                              // E2 = D                  [2]
        ete       15, 3                          // E3 = E15                [4]
        ldc       @mw_get_nth                    // D = @mw_get_nth         [15]
        jale      1                              // E2 = call @mw_get_nth   [3]
        lit16     656                            // D = 0x290               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       2                              // A = E2                  [2]
        wrd                                      // *A = D                  [2]
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       14                             // D = E14                 [2]
        xore      15                             // D ^= E15                [3]
        bdz       %"block%177"                   //                         [4]
        jmp       %"block%171"                   //                         [4]
%"block%177":                                    // block                   (3767)
        ldg       @.str.59                       // D = @.str.59            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ldg       @using_clusters                // D = @using_clusters     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%208"                   //                         [4]
        jl        %"block%182"                   //                         [6]
%"block%208":                                    // block                   (3878)
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%211"                   //                         [4]
        jl        %._crit_edge44                 //                         [6]
%"block%211":                                    // block                   (3915)
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
%"block%214":                                    // block                   (3920)
        eta       2                              // A = E2                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       14                             // E14 = A                 [2]
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        baz       %tn%10                         // skip migrate if !A      [4]
        ld8a                                     // migrate                 [3]
%tn%10:
        ldspawn   %tn%11, 0xf007                 // D = spawn info          [18]
        spc       %tn%12, 1                      // attempt spawn           [4]
        jl        %tn%13                         // continue                [6]
%tn%12:
        ldc       @init_cluster.cilkhelper       // D = @init_cluster.cilkhelper[15]
        jale      1                              // call @init_cluster.cilkhelper[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        addm                                     // threadCount -= 1        [2]
        jmp       %tn%13                         // continue                [4]
%tn%11:
        ldc       @init_cluster.cilkhelper       // D = @init_cluster.cilkhelper[15]
        jale      1                              // call @init_cluster.cilkhelper[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        resize    0x30000                        // only keep A & D         [7]
        addm                                     // threadCount -= 1        [2]
        bz        %tn%14                         // branch if last thread   [4]
        release   0                              // quit                    [3]
%tn%14:
        aaim      1                              // A = &continuationValid  [3]
%tn%15:
        ld                                       // D = continuationValid   [1]
        bdz       %tn%15                         // not ready yet           [4]
        aaim      1                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D                  [2]
        jmp       %tn%16                         // jmp over next           [4]
%tn%17:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // D = A                   [2]
%tn%16:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%17                         // D != 0, adjust A        [4]
        lsr       0                              // D = 0x0                 [3]
        rts                                      // resume continuation     [2]
        swapd                                    // D = &continuation[0]    [2]
        dta                                      // A = &continuation[0]    [2]
        swapd                                    // D = 0                   [2]
%tn%13:
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      14                             // D ?= E14                [3]
        td0       39, %"block%212"               // E sge D                 [5]
%._crit_edge45:                                  // block                   (4144)
        ete       14, 2                          // E2 = E14                [4]
        jl        %"block%214"                   //                         [6]
%._crit_edge44:                                  // block                   (4154)
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
%"block%212":                                    // block                   (4159)
        eta       13                             // A = E13                 [2]
        etd       14                             // D = E14                 [2]
        addm                                     // *threadCount += D       [2]
        bdnz      %tn%19                         // kids not done?          [4]
        jmp       %tn%18                         // kids are done           [4]
%tn%19:
        aaim      2                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D == &continuation[0][2]
        jmp       %tn%20                         // skip next inst          [4]
%tn%21:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // A = D                   [2]
%tn%20:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%21                         // Adjust A if D != 0      [4]
        lsr       1                              // D = 0x1                 [3]
        sts                                      // save threadlet state    [2]
        swapd                                    // D = &continuation[0], D2=1[2]
        dta                                      // A = D                   [2]
        swapd                                    // D = 1 (from inst before sts)[2]
        bdz       %tn%18                         // skip if kid             [4]
        aaim      -1                             // A = &continuationValid  [3]
        std                                      // continuationValid = D   [2]
        release   0                              // parent quits            [3]
%tn%18:
        fence                                    // Make sure all ACKs have returned[2]
        jl        %"block%221"                   //                         [6]
%"block%182":                                    // block                   (4228)
        ldg       @threads_per_cluster           // D = @threads_per_cluster[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%185"                   //                         [4]
        jmp       %"block%187"                   //                         [4]
%"block%185":                                    // block                   (4263)
        ldg       @gradients                     // D = @gradients          [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
%"block%193":                                    // block                   (4297)
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        eta       2                              // A = E2                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       2                              // E2 = A                  [2]
        ldg       @threads_per_cluster           // D = @threads_per_cluster[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      2                              // D ?= E2                 [3]
        td0       39, %"block%187"               // E sge D                 [5]
        jmp       %"block%193"                   //                         [4]
%"block%187":                                    // block                   (4357)
        ldg       @.str.60                       // D = @.str.60            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%192"                   //                         [4]
        jl        %._crit_edge41                 //                         [6]
%"block%192":                                    // block                   (4468)
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
%"block%201":                                    // block                   (4473)
        eta       2                              // A = E2                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       14                             // E14 = A                 [2]
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        baz       %tn%22                         // skip migrate if !A      [4]
        ld8a                                     // migrate                 [3]
%tn%22:
        ldspawn   %tn%23, 0xf007                 // D = spawn info          [18]
        spc       %tn%24, 1                      // attempt spawn           [4]
        jl        %tn%25                         // continue                [6]
%tn%24:
        ldc       @init_cluster.cilkhelper.67    // D = @init_cluster.cilkhelper.67[15]
        jale      1                              // call @init_cluster.cilkhelper.67[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        addm                                     // threadCount -= 1        [2]
        jmp       %tn%25                         // continue                [4]
%tn%23:
        ldc       @init_cluster.cilkhelper.67    // D = @init_cluster.cilkhelper.67[15]
        jale      1                              // call @init_cluster.cilkhelper.67[3]
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
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      14                             // D ?= E14                [3]
        td0       39, %"block%199"               // E sge D                 [5]
%._crit_edge43:                                  // block                   (4697)
        ete       14, 2                          // E2 = E14                [4]
        jl        %"block%201"                   //                         [6]
%._crit_edge41:                                  // block                   (4707)
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
%"block%199":                                    // block                   (4712)
        eta       13                             // A = E13                 [2]
        etd       14                             // D = E14                 [2]
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
%"block%221":                                    // block                   (4775)
        ldg       @.str.61                       // D = @.str.61            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        bita      %tn%34                         // A = *A                  [4]
%tn%34:
        ld8a                                     // migrate(*A)             [3]
        lit16     608                            // D = 0x260               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%35                         // A = *A                  [4] **** spill related
%tn%35:
        lsr       7                              // D = clock()             [3]
        wrd                                      // *A = D                  [2]
        ldg       @multi_file_load               // D = @multi_file_load    [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdz       %tn%36                         //                         [4]
        lsr       1                              // D = 1                   [3]
%tn%36:
        dte       1                              // E1 = D                  [2]
        ldg       @using_clusters                // D = @using_clusters     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%230"                   //                         [4]
        jl        %"block%244"                   //                         [6]
%"block%230":                                    // block                   (4973)
        etd       1                              // D = E1                  [2]
        td1       0, %"block%231"                // if LSB is set           [5]
%"block%243":                                    // block                   (4982)
        ldc       @populateTrainingData          // D = @populateTrainingData[15]
        jale      1                              // call @populateTrainingData[3]
        jl        %"block%247"                   //                         [6]
%"block%231":                                    // block                   (5006)
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%234"                   //                         [4]
        jl        %._crit_edge46                 //                         [6]
%"block%234":                                    // block                   (5043)
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
%"block%237":                                    // block                   (5048)
        eta       2                              // A = E2                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       14                             // E14 = A                 [2]
        ldg       @data_read_buffer              // D = @data_read_buffer   [24]
        dta                                      // A = D                   [2]
        bita      %tn%37                         // A = *A                  [4]
%tn%37:
        baz       %tn%38                         // skip migrate if !A      [4]
        ld8a                                     // migrate                 [3]
%tn%38:
        ldspawn   %tn%39, 0xf007                 // D = spawn info          [18]
        spc       %tn%40, 1                      // attempt spawn           [4]
        jl        %tn%41                         // continue                [6]
%tn%40:
        ldc       @node_load_from_n0.cilkhelper  // D = @node_load_from_n0.cilkhelper[15]
        jale      1                              // call @node_load_from_n0.cilkhelper[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        addm                                     // threadCount -= 1        [2]
        jmp       %tn%41                         // continue                [4]
%tn%39:
        ldc       @node_load_from_n0.cilkhelper  // D = @node_load_from_n0.cilkhelper[15]
        jale      1                              // call @node_load_from_n0.cilkhelper[3]
        eta       13                             // A = syncStructPtr       [2]
        lsr       3                              // D = -1                  [3]
        resize    0x30000                        // only keep A & D         [7]
        addm                                     // threadCount -= 1        [2]
        bz        %tn%42                         // branch if last thread   [4]
        release   0                              // quit                    [3]
%tn%42:
        aaim      1                              // A = &continuationValid  [3]
%tn%43:
        ld                                       // D = continuationValid   [1]
        bdz       %tn%43                         // not ready yet           [4]
        aaim      1                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D                  [2]
        jmp       %tn%44                         // jmp over next           [4]
%tn%45:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // D = A                   [2]
%tn%44:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%45                         // D != 0, adjust A        [4]
        lsr       0                              // D = 0x0                 [3]
        rts                                      // resume continuation     [2]
        swapd                                    // D = &continuation[0]    [2]
        dta                                      // A = &continuation[0]    [2]
        swapd                                    // D = 0                   [2]
%tn%41:
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      14                             // D ?= E14                [3]
        td0       39, %"block%235"               // D sle E                 [5]
%._crit_edge47:                                  // block                   (5268)
        ete       14, 2                          // E2 = E14                [4]
        jl        %"block%237"                   //                         [6]
%._crit_edge46:                                  // block                   (5278)
        lsr       0                              // D = 0x0                 [3]
        dte       14                             // E14 = D                 [2]
%"block%235":                                    // block                   (5283)
        eta       13                             // A = E13                 [2]
        etd       14                             // D = E14                 [2]
        addm                                     // *threadCount += D       [2]
        bdnz      %tn%47                         // kids not done?          [4]
        jmp       %tn%46                         // kids are done           [4]
%tn%47:
        aaim      2                              // A = &continuation[0]    [3]
        atd                                      // D = A                   [2]
        dtd2                                     // D2 = D == &continuation[0][2]
        jmp       %tn%48                         // skip next inst          [4]
%tn%49:
        aaim      1                              // A=&continuation[++]     [3]
        atd                                      // A = D                   [2]
%tn%48:
        muma1     7                              // D &= 0xFF               [4]
        bdnz      %tn%49                         // Adjust A if D != 0      [4]
        lsr       1                              // D = 0x1                 [3]
        sts                                      // save threadlet state    [2]
        swapd                                    // D = &continuation[0], D2=1[2]
        dta                                      // A = D                   [2]
        swapd                                    // D = 1 (from inst before sts)[2]
        bdz       %tn%46                         // skip if kid             [4]
        aaim      -1                             // A = &continuationValid  [3]
        std                                      // continuationValid = D   [2]
        release   0                              // parent quits            [3]
%tn%46:
        fence                                    // Make sure all ACKs have returned[2]
        jmp       %"block%247"                   //                         [4]
%"block%244":                                    // block                   (5350)
        etd       1                              // D = E1                  [2]
        td1       0, %"block%245"                // if LSB is set           [5]
%"block%246":                                    // block                   (5361)
        ldc       @populateTraining_featurepartitioned// D = @populateTraining_featurepartitioned[15]
        jale      1                              // call @populateTraining_featurepartitioned[3]
        jmp       %"block%247"                   //                         [4]
%"block%245":                                    // block                   (5383)
        lsr       0                              // D = 0x0                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @featpart_node_load_from_n0    // D = @featpart_node_load_from_n0[15]
        jale      1                              // call @featpart_node_load_from_n0[3]
%"block%247":                                    // block                   (5406)
        lit16     608                            // D = 0x260               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%50                         // A = *A                  [4] **** spill related
%tn%50:
        lde       1                              // E1 = *A                 [3]
        lit16     600                            // D = 0x258               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%51                         // A = *A                  [4] **** spill related
%tn%51:
        lsr       7                              // D = clock()             [3]
        sube      1                              // D -= E1                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @.str.62                       // D = @.str.62            [24]
        dte       2                              // E2 = D                  [2]
        ldg       @clock_rate                    // D = @clock_rate         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        inttofp   1                              // D = double(D)           [3]
        dte       3                              // E3 = D                  [2]
        lit16     600                            // D = 0x258               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        bita      %tn%52                         // A = *A                  [4] **** spill related
%tn%52:
        ld                                       // D = *A                  [1]
        td1       63, %tn%53                     // branch if top bit is 1  [5]
        inttofp   1                              // D = double(D)           [3]
        jmp       %tn%55                         //                         [4]
%tn%53:
        td0       0, %tn%54                      // branch if bit 0 is 0    [5]
        td1       1, %tn%54                      // branch if bit 1 is 1    [5]
        mumo1     1                              // D |= 3                  [4]
%tn%54:
        srlc      1                              // D >>= 1                 [4]
        inttofp   1                              // D = double(D)           [3]
        dte       1                              // E1 = D                  [2]
        fpadde    1                              // D += E1                 [4]
%tn%55:
        fpdive    3                              // D /= E3                 [4]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        cmpe      1                              // D ?= E1                 [3]
        td0       39, %"block%260"               // E sge D                 [5]
        jl        %"block%262"                   //                         [6]
%"block%260":                                    // block                   (5659)
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       3                              // E3 = D                  [2]
%"block%268":                                    // block                   (5693)
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        bita      %tn%56                         // A = *A                  [4]
%tn%56:
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       4                              // E4 = D                  [2]
        eta       4                              // A = E4                  [2]
        ld                                       // D = *A                  [1]
        inttofp   1                              // D = double(D)           [3]
        dte       5                              // E5 = D                  [2]
        lit16     1047                           // D = 0x417               [6]
        sllc      52                             // D = 0x4170000000000000  [4]
        dte       6                              // E6 = D                  [2]
        lit16     1023                           // D = 0x3FF               [6]
        sllc      52                             // D = 0x3FF0000000000000  [4]
        fpdive    5                              // D /= E5                 [4]
        fpmule    6                              // D *= E6                 [4]
        fptoint                                  // D = int(D)              [3]
        dte       5                              // E5 = D                  [2]
        etd       2                              // D = E2                  [2]
        bdgtz     %"block%281"                   //                         [4]
        jl        %"block%288"                   //                         [6]
%"block%281":                                    // block                   (5788)
        etd       5                              // D = E5                  [2]
        eta       4                              // A = E4                  [2]
        radd                                     // *A += D                 [2]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        lsr       1                              // D = 0x1                 [3]
        cmpe      2                              // D ?= E2                 [3]
        td1       38, %"block%284"               // E sgt D                 [5]
        jmp       %"block%285"                   //                         [4]
%"block%284":                                    // block                   (5838)
        lsr       1                              // D = 0x1                 [3]
        dte       1                              // E1 = D                  [2]
%"block%293":                                    // block                   (5843)
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        etd       1                              // D = E1                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       5                              // D = E5                  [2]
        radd                                     // *A += D                 [2]
        eta       1                              // A = E1                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       1                              // E1 = A                  [2]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        etd       1                              // D = E1                  [2]
        cmpe      2                              // D ?= E2                 [3]
        td0       38, %"block%285"               // E sle D                 [5]
        jmp       %"block%293"                   //                         [4]
%"block%285":                                    // block                   (5943)
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
%"block%288":                                    // block                   (5972)
        eta       3                              // A = E3                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       4                              // E4 = A                  [2]
        etd       1                              // D = E1                  [2]
        cmpe      3                              // D ?= E3                 [3]
        td0       39, %"block%262"               // E sge D                 [5]
%._crit_edge51:                                  // block                   (5993)
        ete       4, 3                           // E3 = E4                 [4]
        jl        %"block%268"                   //                         [6]
%"block%262":                                    // block                   (6003)
        ldg       @.str.63                       // D = @.str.63            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ldg       @test_s_stripped               // D = @test_s_stripped    [24]
        dta                                      // A = D                   [2]
        bita      %tn%57                         // A = *A                  [4]
%tn%57:
        ld8a                                     // migrate(*A)             [3]
        ldg       @.str.64                       // D = @.str.64            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit16     632                            // D = 0x278               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit16     568                            // D = 0x238               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     576                            // D = 0x240               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       13                             // E13 = *A                [3] **** spill related
        lit16     584                            // D = 0x248               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       14                             // E14 = *A                [3] **** spill related
        lit16     592                            // D = 0x250               [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       15                             // E15 = *A                [3] **** spill related
%tn%0:                                           // block                   (6232)
        eta       0                              // A = newFP               [2]
        lde       0                              // E0 = oldFP              [3]
        ate       11                             // E11 = newFP             [2]
        ldr       @_frame_buckets_+16            // D = bucket              [24]
        dtd2                                     // D2 = FP                 [2]
        dta                                      // A = D                   [2]
%tn%58:
        ld                                       // D = *bucket             [1]
        bdgtz     %tn%59                         // bucket valid?           [4]
        bdz       %tn%59                         // bucket empty?           [4]
        jmp       %tn%58                         // bucket locked           [4]
%tn%59:
        eta       11                             // A = newFP               [2]
        std                                      // *fp = free list         [2]
        swapd                                    //                         [2]
        dta                                      // A = D                   [2]
        swapd                                    //                         [2]
        cas       11                             // bucket changed?         [3]
        bnz       %tn%58                         // if bucket changed, try again[4]
        jmpe      1                              // return                  [3]
        .function_end                            // function size           (6300)
        .extern   @mw_malloc2d
        .extern   @mw_get_nth
        .extern   @mw_malloc1dlong
        .extern   @_Cilk_migrate_hint
        .text
@init_cluster.cilkhelper:
        .function_begin                          // entry                   (0)
                                                 // empty prologue          [0]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%2"                     //                         [4]
        jl        %"block%12"                    //                         [6]
%"block%2":                                      // block                   (37)
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        ldg       @working_vec                   // D = @working_vec        [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       4                              // E4 = *A                 [3]
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       6                              // E6 = D                  [2]
%"block%15":                                     // block                   (159)
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     3                              // A = D + E3              [3]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     4                              // A = D + E4              [3]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     5                              // A = D + E5              [3]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        eta       6                              // A = E6                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       6                              // E6 = A                  [2]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      6                              // D ?= E6                 [3]
        td0       39, %"block%12"                // E sge D                 [5]
        jmp       %"block%15"                    //                         [4]
%"block%12":                                     // block                   (247)
        ldg       @using_clusters                // D = @using_clusters     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%23"                    //                         [4]
        jl        %"block%55"                    //                         [6]
%"block%23":                                     // block                   (284)
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%26"                    //                         [4]
        jmp       %"block%30"                    //                         [4]
%"block%26":                                     // block                   (319)
        ldg       @accuracies                    // D = @accuracies         [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       4                              // E4 = D                  [2]
%"block%47":                                     // block                   (363)
        etd       4                              // D = E4                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     3                              // A = D + E3              [3]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        eta       4                              // A = E4                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       4                              // E4 = A                  [2]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      4                              // D ?= E4                 [3]
        td0       39, %"block%30"                // E sge D                 [5]
        jmp       %"block%47"                    //                         [4]
%"block%30":                                     // block                   (423)
        ldg       @cluster_samples               // D = @cluster_samples    [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @total_evaluated_sample_count  // D = @total_evaluated_sample_count[24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @samples_since_token           // D = @samples_since_token[24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        lsr       3                              // D = -1                  [3]
        add                                      // D += *A                 [2]
        xore      2                              // D ^= E2                 [3]
        bdnz      %tn%1                          //                         [4]
%tn%0:                                           // block                   (584)
        lsr       0                              // D = 0x0                 [3]
        dte       3                              // E3 = D                  [2]
        jmp       %tn%2                          //                         [4]
%tn%1:                                           // block                   (593)
        eta       2                              // A = E2                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       3                              // E3 = A                  [2]
%tn%2:                                           // block                   (600)
        ldg       @upstream                      // D = @upstream           [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       3                              // D = E3                  [2]
        wrd                                      // *A = D                  [2]
        ldg       @token                         // D = @token              [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       3                              // E3 = D                  [2]
        eta       2                              // A = E2                  [2]
        baz       %"block%53"                    //                         [4]
%"block%54":                                     // block                   (682)
        lsr       0                              // D = 0x0                 [3]
        eta       3                              // A = E3                  [2]
        wrd                                      // *A = D                  [2]
        jmpe      1                              // return void             [3]
%"block%53":                                     // block                   (692)
        lsr       1                              // D = 0x1                 [3]
        eta       3                              // A = E3                  [2]
        wrd                                      // *A = D                  [2]
        jmpe      1                              // return void             [3]
%"block%55":                                     // block                   (702)
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%58"                    //                         [4]
        jmp       %"block%68"                    //                         [4]
%"block%58":                                     // block                   (737)
        ldg       @accuracies                    // D = @accuracies         [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       3                              // E3 = D                  [2]
%"block%62":                                     // block                   (781)
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        eta       3                              // A = E3                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       3                              // E3 = A                  [2]
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      3                              // D ?= E3                 [3]
        td0       39, %"block%68"                // E sge D                 [5]
        jmp       %"block%62"                    //                         [4]
%"block%68":                                     // block                   (841)
        jmpe      1                              // return void             [3]
        .function_end                            // function size           (844)
        .text
@node_load_from_n0.cilkhelper:
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
        aaim      1                              // A += 8                  [3]
        ste       2                              // *A = E2                 [3]
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
        aaim      1                              // A += 8                  [3]
        lde       2                              // E2 = *A                 [3]
        dta                                      // A = &reg save area      [2]
        lsr       0                              // D = 0x0                 [3]
        std                                      // unlock reg save area    [2]
%tn%2:
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
        ete       2, 13                          // E13 = E2                [4]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        inttofp   1                              // D = double(D)           [3]
        dte       1                              // E1 = D                  [2]
        lit16     16369                          // D = 0x3FF1              [6]
        sill      39321                          // D = 0x3FF19999          [6]
        sill      39321                          // D = 0x3FF199999999      [6]
        sill      39322                          // D = 0x3FF199999999999A  [6]
        dte       2                              // E2 = D                  [2]
        ldg       @total_train_points            // D = @total_train_points [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        inttofp   1                              // D = double(D)           [3]
        fpdive    1                              // D /= E1                 [4]
        fpmule    2                              // D *= E2                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @ceil                          // D = @ceil               [15]
        jale      1                              // E2 = call @ceil         [3]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        fptoint                                  // D = int(D)              [3]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       1                              // D = 0x1                 [3]
        sllc      27                             // D = 0x8000000           [4]
        dte       2                              // E2 = D                  [2]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // E2 = call @malloc       [3]
        ldg       @data_read_buffer              // D = @data_read_buffer   [24]
        dta                                      // A = D                   [2]
        bita      %tn%9                          // A = *A                  [4]
%tn%9:
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2]
        ldg       @data_read_buffer              // D = @data_read_buffer   [24]
        dta                                      // A = D                   [2]
        bita      %tn%10                         // A = *A                  [4]
%tn%10:
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       14                             // E14 = *A                [3]
        ldg       @train_data_path               // D = @train_data_path    [24]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldc       @strlen                        // D = @strlen             [15]
        jale      1                              // E2 = call @strlen       [3]
        lit       10                             // D = 0xA                 [4]
        dpeta     2                              // A = D + E2              [3]
        ate       2                              // E2 = A                  [2]
        ldc       @malloc                        // D = @malloc             [15]
        jale      1                              // E2 = call @malloc       [3]
        ete       2, 12                          // E12 = E2                [4]
        ete       12, 2                          // E2 = E12                [4]
        ldg       @.str.24                       // D = @.str.24            [24]
        dte       3                              // E3 = D                  [2]
        ldg       @train_data_path               // D = @train_data_path    [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @sprintf                       // D = @sprintf            [15]
        jale      1                              // E2 = call @sprintf      [3]
        ldg       @.str.25                       // D = @.str.25            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        etd       12                             // D = E12                 [2]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        ldg       @stdout                        // D = @stdout             [24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ete       12, 2                          // E2 = E12                [4]
        ldg       @.str.26                       // D = @.str.26            [24]
        dte       3                              // E3 = D                  [2]
        ldc       @fopen                         // D = @fopen              [15]
        jale      1                              // E2 = call @fopen        [3]
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        wrd                                      // *A = D                  [2] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        bdz       %"block%27"                    //                         [4]
        jmp       %"block%29"                    //                         [4]
%"block%27":                                     // block                   (1003)
        ldg       @.str.27                       // D = @.str.27            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%29":                                     // block                   (1070)
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       3                              // E3 = D                  [2]
        lit       2                              // D = 0x2                 [4]
        dte       4                              // E4 = D                  [2]
        ldc       @fseek                         // D = @fseek              [15]
        jale      1                              // E2 = call @fseek        [3]
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @ftell                         // D = @ftell              [15]
        jale      1                              // E2 = call @ftell        [3]
        ete       2, 15                          // E15 = E2                [4]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       15                             // D = E15                 [2]
        bdgtz     %tn%11                         // if D > 0                [4]
        bdz       %tn%12                         // if D == 0               [4]
        addl      7                              // D += 8                  [6]
%tn%11:
        srac      3                              // D >>= 3                 [4]
%tn%12:
        wrd                                      // *A = D                  [2] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       3                              // E3 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        dte       4                              // E4 = D                  [2]
        ldc       @fseek                         // D = @fseek              [15]
        jale      1                              // E2 = call @fseek        [3]
        etd       15                             // D = E15                 [2]
        bdgtz     %tn%13                         // if D > 0                [4]
        bdz       %tn%14                         // if D == 0               [4]
        lit       31                             // D = 0x1F                [4]
        adde      15                             // D += E15                [3]
%tn%13:
        srac      5                              // D >>= 5                 [4]
%tn%14:
        dte       12                             // E12 = D                 [2]
        ldg       @.str.28                       // D = @.str.28            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        etd       12                             // D = E12                 [2]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      12                             // D ?= E12                [3]
        td0       39, %"block%38"                // E sge D                 [5]
        jmp       %"block%41"                    //                         [4]
%"block%38":                                     // block                   (1341)
        ldg       @.str.29                       // D = @.str.29            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        etd       12                             // D = E12                 [2]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        lit       72                             // D = 0x48                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
%"block%41":                                     // block                   (1446)
        lit16     2048                           // D = 0x800               [6]
        sill      7                              // D = 0x8000007           [6]
        cmpe      15                             // D ?= E15                [3]
        td1       38, %"block%43"                // E sgt D                 [5]
%._crit_edge187:                                 // block                   (1466)
        lsr       0                              // D = 0x0                 [3]
        dte       12                             // E12 = D                 [2]
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        jmp       %"block%49"                    //                         [4]
%"block%43":                                     // block                   (1487)
        etd       15                             // D = E15                 [2]
        srlc      27                             // D >>= 27                [4]
        dte       1                              // E1 = D                  [2]
        lsr       3                              // D = -1                  [3]
        dte       12                             // E12 = D                 [2]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2]
        sllc      24                             // D <<= 24                [4]
        cmpe      2                              // D ?= E2                 [3]
        srlc      37                             // shift bit 37(ne) to 0   [4]
        muma1     0                              // D &= 1                  [4]
        muma1     0                              // D &= 0x1                [4]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
%"block%49":                                     // block                   (1543)
        ldg       @.str.30                       // D = @.str.30            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        etd       12                             // D = E12                 [2]
        td1       0, %"block%54"                 // if LSB is set           [5]
        jl        %"block%311"                   //                         [6]
%"block%54":                                     // block                   (1628)
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        bdgtz     %"block%56"                    //                         [4]
%._crit_edge188:                                 // block                   (1640)
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
        lsr       0                              // D = 0x0                 [3]
        dte       12                             // E12 = D                 [2]
        jl        %"block%377"                   //                         [6]
%"block%56":                                     // block                   (1656)
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       3                              // D = -1                  [3]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        sllc      24                             // D <<= 24                [4]
        dte       2                              // E2 = D                  [2]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        sube      2                              // D -= E2                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        cmpe      1                              // D ?= E1                 [3]
        td0       38, %"block%140"               // E sle D                 [5]
        jl        %"block%62"                    //                         [6]
%"block%140":                                    // block                   (1750)
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        bdlez     %"block%142"                   //                         [4]
        jl        %"block%143"                   //                         [6]
%"block%142":                                    // block                   (1768)
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       12                             // E12 = D                 [2]
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
        lit16     176                            // D = 0xB0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       3                              // D = -1                  [3]
        wrd                                      // *A = D                  [2] **** spill related
%"block%219":                                    // block                   (1806)
        ldg       @.str.31                       // D = @.str.31            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     168                            // D = 0xA8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     168                            // D = 0xA8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%237"                   //                         [4]
        jl        %"block%228"                   //                         [6]
%"block%237":                                    // block                   (1981)
        ete       14, 2                          // E2 = E14                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        dte       4                              // E4 = D                  [2]
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        xore      2                              // D ^= E2                 [3]
        bdz       %"block%246"                   //                         [4]
        jl        %"block%240"                   //                         [6]
%"block%246":                                    // block                   (2048)
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       2                              // E2 = D                  [2]
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       4                              // E4 = D                  [2]
        ldg       @train_c                       // D = @train_c            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       5                              // E5 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        dte       6                              // E6 = D                  [2]
%"block%252":                                    // block                   (2226)
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     14                             // A = D + E14             [3]
        lde       7                              // E7 = *A                 [3]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x8                            // D |= 0x8                [6]
        dpeta     14                             // A = D + E14             [3]
        lde       8                              // E8 = *A                 [3]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x10                           // D |= 0x10               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       9                              // E9 = *A                 [3]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x18                           // D |= 0x18               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       10                             // E10 = *A                [3]
        ldg       @non_standard_classes          // D = @non_standard_classes[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%270"                   //                         [4]
        jmp       %"block%279"                   //                         [4]
%"block%270":                                    // block                   (2327)
        ldg       @class1                        // D = @class1             [24]
        dta                                      // A = D                   [2]
        etd       10                             // D = E10                 [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%273"                   //                         [4]
%._crit_edge207:                                 // block                   (2361)
        lsr       3                              // D = -1                  [3]
        dte       10                             // E10 = D                 [2]
        jmp       %"block%279"                   //                         [4]
%"block%273":                                    // block                   (2370)
        ldg       @class2                        // D = @class2             [24]
        dta                                      // A = D                   [2]
        etd       10                             // D = E10                 [2]
        xor                                      // D ^= *A                 [2]
        bdz       %._crit_edge208                //                         [4]
        jl        %"block%276"                   //                         [6]
%._crit_edge208:                                 // block                   (2410)
        lsr       1                              // D = 0x1                 [3]
        dte       10                             // E10 = D                 [2]
%"block%279":                                    // block                   (2415)
        lit16     176                            // D = 0xB0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       7                              // D = E7                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%282"                   //                         [4]
        jmp       %"block%290"                   //                         [4]
%"block%282":                                    // block                   (2436)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       4                              // A = E4                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       12                             // D = E12                 [2]
        wrd                                      // *A = D                  [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       5                              // A = E5                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       10                             // D = E10                 [2]
        wrd                                      // *A = D                  [2]
        lit16     176                            // D = 0xB0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       7                              // D = E7                  [2]
        wrd                                      // *A = D                  [2] **** spill related
%"block%290":                                    // block                   (2488)
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       1                              // A = E1                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       8                              // D = E8                  [2]
        wrd                                      // *A = D                  [2]
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       2                              // A = E2                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       9                              // D = E9                  [2]
        wrd                                      // *A = D                  [2]
        etd       8                              // D = E8                  [2]
        sllc      3                              // D <<= 3                 [4]
        eta       3                              // A = E3                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        addm                                     // *A += D                 [2]
        eta       12                             // A = E12                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       12                             // E12 = A                 [2]
        eta       6                              // A = E6                  [2]
        aaimb     4                              // A += 4                  [3]
        ate       6                              // E6 = A                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        cmpe      6                              // D ?= E6                 [3]
        td1       43, %tn%15                     // E ult D                 [5]
        jmp       %"block%306"                   //                         [4]
%tn%15:
        jl        %"block%252"                   //                         [6]
%"block%228":                                    // block                   (2576)
        ete       14, 2                          // E2 = E14                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        xor                                      // D ^= *A                 [2]
        bdz       %"block%306"                   //                         [4]
        jl        %"block%231"                   //                         [6]
%"block%306":                                    // block                   (2645)
        lit16     168                            // D = 0xA8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      1                              // D ?= E1                 [3]
        td1       39, %._crit_edge211            // E slt D                 [5]
        jl        %"block%377"                   //                         [6]
%._crit_edge211:                                 // block                   (2679)
        lit16     168                            // D = 0xA8                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        jl        %"block%219"                   //                         [6]
%"block%143":                                    // block                   (2710)
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       12                             // E12 = D                 [2]
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
        lit16     160                            // D = 0xA0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       3                              // D = -1                  [3]
        wrd                                      // *A = D                  [2] **** spill related
%"block%144":                                    // block                   (2748)
        ldg       @.str.31                       // D = @.str.31            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     152                            // D = 0x98                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     152                            // D = 0x98                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%153"                   //                         [4]
        jmp       %"block%156"                   //                         [4]
%"block%153":                                    // block                   (2921)
        ete       14, 2                          // E2 = E14                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        dte       4                              // E4 = D                  [2]
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        xore      2                              // D ^= E2                 [3]
        bdz       %._crit_edge197                //                         [4]
        jl        %"block%240"                   //                         [6]
%._crit_edge197:                                 // block                   (2988)
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        dte       1                              // E1 = D                  [2]
        jmp       %"block%159"                   //                         [4]
%"block%156":                                    // block                   (3001)
        ete       14, 2                          // E2 = E14                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        xor                                      // D ^= *A                 [2]
        bdz       %._crit_edge198                //                         [4]
        jl        %"block%231"                   //                         [6]
%._crit_edge198:                                 // block                   (3070)
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
%"block%159":                                    // block                   (3080)
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       2                              // E2 = D                  [2]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       3                              // E3 = D                  [2]
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        lde       4                              // E4 = *A                 [3]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       5                              // E5 = D                  [2]
        ldg       @train_c                       // D = @train_c            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       6                              // E6 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        dte       7                              // E7 = D                  [2]
%"block%166":                                    // block                   (3258)
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     14                             // A = D + E14             [3]
        lde       8                              // E8 = *A                 [3]
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x8                            // D |= 0x8                [6]
        dpeta     14                             // A = D + E14             [3]
        lde       9                              // E9 = *A                 [3]
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x10                           // D |= 0x10               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       10                             // E10 = *A                [3]
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x18                           // D |= 0x18               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       11                             // E11 = *A                [3]
        ldg       @non_standard_classes          // D = @non_standard_classes[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%184"                   //                         [4]
        jmp       %"block%190"                   //                         [4]
%"block%184":                                    // block                   (3359)
        ldg       @class1                        // D = @class1             [24]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%187"                   //                         [4]
%._crit_edge200:                                 // block                   (3393)
        lsr       3                              // D = -1                  [3]
        dte       11                             // E11 = D                 [2]
        jmp       %"block%190"                   //                         [4]
%"block%187":                                    // block                   (3402)
        ldg       @class2                        // D = @class2             [24]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        xor                                      // D ^= *A                 [2]
        bdz       %._crit_edge201                //                         [4]
        jl        %"block%276"                   //                         [6]
%._crit_edge201:                                 // block                   (3442)
        lsr       1                              // D = 0x1                 [3]
        dte       11                             // E11 = D                 [2]
%"block%190":                                    // block                   (3447)
        lit16     160                            // D = 0xA0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       8                              // D = E8                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%193"                   //                         [4]
        jmp       %"block%201"                   //                         [4]
%"block%193":                                    // block                   (3468)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       5                              // A = E5                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       12                             // D = E12                 [2]
        wrd                                      // *A = D                  [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       6                              // A = E6                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        wrd                                      // *A = D                  [2]
        lit16     160                            // D = 0xA0                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       8                              // D = E8                  [2]
        wrd                                      // *A = D                  [2] **** spill related
%"block%201":                                    // block                   (3520)
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       2                              // A = E2                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       9                              // D = E9                  [2]
        wrd                                      // *A = D                  [2]
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       3                              // A = E3                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       10                             // D = E10                 [2]
        wrd                                      // *A = D                  [2]
        etd       9                              // D = E9                  [2]
        sllc      3                              // D <<= 3                 [4]
        eta       4                              // A = E4                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        addm                                     // *A += D                 [2]
        eta       12                             // A = E12                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       12                             // E12 = A                 [2]
        eta       7                              // A = E7                  [2]
        aaimb     4                              // A += 4                  [3]
        ate       7                              // E7 = A                  [2]
        etd       1                              // D = E1                  [2]
        cmpe      7                              // D ?= E7                 [3]
        td0       39, %"block%217"               // E sge D                 [5]
        jl        %"block%166"                   //                         [6]
%"block%217":                                    // block                   (3599)
        lit16     152                            // D = 0x98                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      1                              // D ?= E1                 [3]
        td1       39, %._crit_edge204            // E slt D                 [5]
        jl        %"block%377"                   //                         [6]
%._crit_edge204:                                 // block                   (3633)
        lit16     152                            // D = 0x98                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        jl        %"block%144"                   //                         [6]
%"block%62":                                     // block                   (3664)
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lsr       0                              // D = 0x0                 [3]
        dte       12                             // E12 = D                 [2]
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
        lit16     144                            // D = 0x90                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       3                              // D = -1                  [3]
        wrd                                      // *A = D                  [2] **** spill related
%"block%63":                                     // block                   (3702)
        ldg       @.str.31                       // D = @.str.31            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     136                            // D = 0x88                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lsr       1                              // D = 0x1                 [3]
        adde      1                              // D += E1                 [3]
        wrd                                      // *A = D                  [2] **** spill related
        lit16     136                            // D = 0x88                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       112                            // D = 0x70                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%72"                    //                         [4]
        jl        %"block%75"                    //                         [6]
%"block%72":                                     // block                   (3877)
        ete       14, 2                          // E2 = E14                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        dte       4                              // E4 = D                  [2]
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        xore      2                              // D ^= E2                 [3]
        bdnz      %"block%240"                   //                         [4]
%._crit_edge189:                                 // block                   (3938)
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        dte       1                              // E1 = D                  [2]
        jl        %"block%80"                    //                         [6]
%"block%240":                                    // block                   (3953)
        ldg       @.str.33                       // D = @.str.33            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        sllc      24                             // D <<= 24                [4]
        dte       1                              // E1 = D                  [2]
        lsr       1                              // D = 0x1                 [3]
        sllc      24                             // D = 0x1000000           [4]
        adde      1                              // D += E1                 [3]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%75":                                     // block                   (4105)
        ldg       @.str.32                       // D = @.str.32            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ete       14, 2                          // E2 = E14                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       2                              // D = E2                  [2]
        xor                                      // D ^= *A                 [2]
        bdz       %._crit_edge190                //                         [4]
        jl        %"block%231"                   //                         [6]
%._crit_edge190:                                 // block                   (4270)
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
%"block%80":                                     // block                   (4280)
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       2                              // E2 = D                  [2]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       3                              // E3 = D                  [2]
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        lde       4                              // E4 = *A                 [3]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       5                              // E5 = D                  [2]
        ldg       @train_c                       // D = @train_c            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       6                              // E6 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        dte       7                              // E7 = D                  [2]
%"block%87":                                     // block                   (4458)
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     14                             // A = D + E14             [3]
        lde       8                              // E8 = *A                 [3]
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x8                            // D |= 0x8                [6]
        dpeta     14                             // A = D + E14             [3]
        lde       9                              // E9 = *A                 [3]
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x10                           // D |= 0x10               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       10                             // E10 = *A                [3]
        etd       7                              // D = E7                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x18                           // D |= 0x18               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       11                             // E11 = *A                [3]
        ldg       @non_standard_classes          // D = @non_standard_classes[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%105"                   //                         [4]
        jl        %"block%111"                   //                         [6]
%"block%105":                                    // block                   (4561)
        ldg       @class1                        // D = @class1             [24]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%108"                   //                         [4]
%._crit_edge192:                                 // block                   (4595)
        lsr       3                              // D = -1                  [3]
        dte       11                             // E11 = D                 [2]
        jl        %"block%111"                   //                         [6]
%"block%108":                                    // block                   (4606)
        ldg       @class2                        // D = @class2             [24]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%276"                   //                         [4]
        jmp       %._crit_edge193                //                         [4]
%"block%276":                                    // block                   (4644)
        ldg       @.str.34                       // D = @.str.34            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit       2                              // D = 0x2                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%._crit_edge193:                                 // block                   (4740)
        lsr       1                              // D = 0x1                 [3]
        dte       11                             // E11 = D                 [2]
%"block%111":                                    // block                   (4745)
        lit16     144                            // D = 0x90                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       8                              // D = E8                  [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%114"                   //                         [4]
        jmp       %"block%122"                   //                         [4]
%"block%114":                                    // block                   (4766)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       5                              // A = E5                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       12                             // D = E12                 [2]
        wrd                                      // *A = D                  [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       6                              // A = E6                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        wrd                                      // *A = D                  [2]
        lit16     144                            // D = 0x90                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       8                              // D = E8                  [2]
        wrd                                      // *A = D                  [2] **** spill related
%"block%122":                                    // block                   (4818)
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       2                              // A = E2                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       9                              // D = E9                  [2]
        wrd                                      // *A = D                  [2]
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       3                              // A = E3                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       10                             // D = E10                 [2]
        wrd                                      // *A = D                  [2]
        etd       9                              // D = E9                  [2]
        sllc      3                              // D <<= 3                 [4]
        eta       4                              // A = E4                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        addm                                     // *A += D                 [2]
        eta       12                             // A = E12                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       12                             // E12 = A                 [2]
        eta       7                              // A = E7                  [2]
        aaimb     4                              // A += 4                  [3]
        ate       7                              // E7 = A                  [2]
        etd       1                              // D = E1                  [2]
        cmpe      7                              // D ?= E7                 [3]
        td0       39, %"block%138"               // E sge D                 [5]
        jl        %"block%87"                    //                         [6]
%"block%138":                                    // block                   (4897)
        lit16     136                            // D = 0x88                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit       104                            // D = 0x68                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      1                              // D ?= E1                 [3]
        td1       39, %._crit_edge196            // E slt D                 [5]
        jl        %"block%377"                   //                         [6]
%._crit_edge196:                                 // block                   (4931)
        lit16     136                            // D = 0x88                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        etd       1                              // D = E1                  [2] **** spill related
        wrd                                      // *A = D                  [2] **** spill related
        jl        %"block%63"                    //                         [6]
%"block%231":                                    // block                   (4962)
        ldg       @.str.33                       // D = @.str.33            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        lit       120                            // D = 0x78                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       1                              // E1 = *A                 [3] **** spill related
        lit16     128                            // D = 0x80                [6] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        sllc      24                             // D <<= 24                [4]
        adde      1                              // D += E1                 [3]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lsr       1                              // D = 0x1                 [3]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%"block%311":                                    // block                   (5115)
        ldg       @.str.35                       // D = @.str.35            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        ete       14, 2                          // E2 = E14                [4]
        lit       8                              // D = 0x8                 [4]
        dte       3                              // E3 = D                  [2]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       4                              // E4 = *A                 [3] **** spill related
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       5                              // E5 = *A                 [3] **** spill related
        ldc       @fread                         // D = @fread              [15]
        jale      1                              // E2 = call @fread        [3]
        lit       7                              // D = 0x7                 [4]
        cmpe      15                             // D ?= E15                [3]
        td1       38, %"block%317"               // E sgt D                 [5]
        jl        %._crit_edge212                //                         [6]
%"block%317":                                    // block                   (5253)
        ldg       @train_f                       // D = @train_f            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       1                              // E1 = D                  [2]
        ldg       @train_v                       // D = @train_v            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       2                              // E2 = D                  [2]
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       4                              // E4 = D                  [2]
        ldg       @train_c                       // D = @train_c            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       5                              // E5 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        dte       6                              // E6 = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        dte       12                             // E12 = D                 [2]
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
        lsr       3                              // D = -1                  [3]
        dte       7                              // E7 = D                  [2]
%"block%323":                                    // block                   (5446)
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     14                             // A = D + E14             [3]
        lde       8                              // E8 = *A                 [3]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x8                            // D |= 0x8                [6]
        dpeta     14                             // A = D + E14             [3]
        lde       9                              // E9 = *A                 [3]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x10                           // D |= 0x10               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       10                             // E10 = *A                [3]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        orl0      0x18                           // D |= 0x18               [6]
        dpeta     14                             // A = D + E14             [3]
        lde       11                             // E11 = *A                [3]
        ldg       @non_standard_classes          // D = @non_standard_classes[24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%341"                   //                         [4]
        jl        %"block%350"                   //                         [6]
%"block%341":                                    // block                   (5549)
        ldg       @class1                        // D = @class1             [24]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%344"                   //                         [4]
%._crit_edge214:                                 // block                   (5583)
        lsr       3                              // D = -1                  [3]
        dte       11                             // E11 = D                 [2]
        jl        %"block%350"                   //                         [6]
%"block%344":                                    // block                   (5594)
        ldg       @class2                        // D = @class2             [24]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        xor                                      // D ^= *A                 [2]
        bdnz      %"block%347"                   //                         [4]
        jmp       %._crit_edge215                //                         [4]
%"block%347":                                    // block                   (5632)
        ldg       @.str.34                       // D = @.str.34            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit       2                              // D = 0x2                 [4]
        dte       2                              // E2 = D                  [2]
        ldc       @exit                          // D = @exit               [15]
        jale      1                              // call @exit              [3]
                                                 // unreachable             [0]
%._crit_edge215:                                 // block                   (5728)
        lsr       1                              // D = 0x1                 [3]
        dte       11                             // E11 = D                 [2]
%"block%350":                                    // block                   (5733)
        etd       7                              // D = E7                  [2]
        xore      8                              // D ^= E8                 [3]
        bdnz      %"block%353"                   //                         [4]
        jmp       %"block%361"                   //                         [4]
%"block%353":                                    // block                   (5746)
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       15                             // E15 = A                 [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       4                              // A = E4                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       12                             // D = E12                 [2]
        wrd                                      // *A = D                  [2]
        etd       15                             // D = E15                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       5                              // A = E5                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       11                             // D = E11                 [2]
        wrd                                      // *A = D                  [2]
        ete       8, 7                           // E7 = E8                 [4]
%"block%361":                                    // block                   (5789)
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       1                              // A = E1                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       9                              // D = E9                  [2]
        wrd                                      // *A = D                  [2]
        etd       12                             // D = E12                 [2]
        sllc      3                              // D <<= 3                 [4]
        eta       2                              // A = E2                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       10                             // D = E10                 [2]
        wrd                                      // *A = D                  [2]
        etd       9                              // D = E9                  [2]
        sllc      3                              // D <<= 3                 [4]
        eta       3                              // A = E3                  [2]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       1                              // D = 0x1                 [3]
        addm                                     // *A += D                 [2]
        eta       12                             // A = E12                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       12                             // E12 = A                 [2]
        eta       6                              // A = E6                  [2]
        aaimb     4                              // A += 4                  [3]
        ate       6                              // E6 = A                  [2]
        lit       96                             // D = 0x60                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        ld                                       // D = *A                  [1] **** spill related
        cmpe      6                              // D ?= E6                 [3]
        td0       39, %"block%377"               // E sge D                 [5]
        jl        %"block%323"                   //                         [6]
%._crit_edge212:                                 // block                   (5874)
        lsr       3                              // D = -1                  [3]
        dte       15                             // E15 = D                 [2]
        lsr       0                              // D = 0x0                 [3]
        dte       12                             // E12 = D                 [2]
%"block%377":                                    // block                   (5884)
        ldg       @.str.36                       // D = @.str.36            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        eta       15                             // A = E15                 [2]
        aaimb     1                              // A += 1                  [3]
        ate       14                             // E14 = A                 [2]
        ldg       @samples_per_cluster           // D = @samples_per_cluster[24]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        etd       1                              // D = E1                  [2]
        cmpe      14                             // D ?= E14                [3]
        td0       39, %"block%385"               // E sge D                 [5]
        jmp       %"block%388"                   //                         [4]
%"block%385":                                    // block                   (6006)
        ldg       @.str.37                       // D = @.str.37            [24]
        dte       2                              // E2 = D                  [2]
        etd       13                             // D = E13                 [2]
        eta       0                              // A = E0                  [2]
        aaim      1                              // A += 8                  [3]
        wrd                                      // *A = D                  [2]
        etd       14                             // D = E14                 [2]
        eta       0                              // A = E0                  [2]
        aaim      2                              // A += 16                 [3]
        wrd                                      // *A = D                  [2]
        etd       1                              // D = E1                  [2]
        eta       0                              // A = E0                  [2]
        aaim      3                              // A += 24                 [3]
        wrd                                      // *A = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
%"block%388":                                    // block                   (6105)
        ldg       @train_s                       // D = @train_s            [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       1                              // E1 = *A                 [3]
        etd       14                             // D = E14                 [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     1                              // A = D + E1              [3]
        etd       12                             // D = E12                 [2]
        wrd                                      // *A = D                  [2]
        lsr       0                              // D = 0x0                 [3]
        eta       1                              // A = E1                  [2]
        wrd                                      // *A = D                  [2]
        ldg       @cluster_samples               // D = @cluster_samples    [24]
        dta                                      // A = D                   [2]
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       14                             // D = E14                 [2]
        wrd                                      // *A = D                  [2]
        ldg       @.str.38                       // D = @.str.38            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
        lit       88                             // D = 0x58                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fclose                        // D = @fclose             [15]
        jale      1                              // E2 = call @fclose       [3]
        ldg       @data_read_buffer              // D = @data_read_buffer   [24]
        dta                                      // A = D                   [2]
        bita      %tn%16                         // A = *A                  [4]
%tn%16:
        etd       13                             // D = E13                 [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        ldc       @free                          // D = @free               [15]
        jale      1                              // call @free              [3]
        ldg       @.str.39                       // D = @.str.39            [24]
        dte       2                              // E2 = D                  [2]
        ldc       @printf                        // D = @printf             [15]
        jale      1                              // E2 = call @printf       [3]
        lit       80                             // D = 0x50                [4] **** spill related
        dpeta     0                              // A = D + E0              [3] **** spill related
        lde       2                              // E2 = *A                 [3] **** spill related
        ldc       @fflush                        // D = @fflush             [15]
        jale      1                              // E2 = call @fflush       [3]
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
%tn%0:                                           // block                   (6479)
        eta       0                              // A = newFP               [2]
        lde       0                              // E0 = oldFP              [3]
        ate       11                             // E11 = newFP             [2]
        ldr       @_frame_buckets_+8             // D = bucket              [24]
        dtd2                                     // D2 = FP                 [2]
        dta                                      // A = D                   [2]
%tn%17:
        ld                                       // D = *bucket             [1]
        bdgtz     %tn%18                         // bucket valid?           [4]
        bdz       %tn%18                         // bucket empty?           [4]
        jmp       %tn%17                         // bucket locked           [4]
%tn%18:
        eta       11                             // A = newFP               [2]
        std                                      // *fp = free list         [2]
        swapd                                    //                         [2]
        dta                                      // A = D                   [2]
        swapd                                    //                         [2]
        cas       11                             // bucket changed?         [3]
        bnz       %tn%17                         // if bucket changed, try again[4]
        jmpe      1                              // return                  [3]
        .function_end                            // function size           (6547)
        .text
@init_cluster.cilkhelper.67:
        .function_begin                          // entry                   (0)
                                                 // empty prologue          [0]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%2"                     //                         [4]
        jl        %"block%12"                    //                         [6]
%"block%2":                                      // block                   (37)
        ldg       @model_vec                     // D = @model_vec          [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        ldg       @working_vec                   // D = @working_vec        [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       4                              // E4 = *A                 [3]
        ldg       @feat_deg_recip                // D = @feat_deg_recip     [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       5                              // E5 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       6                              // E6 = D                  [2]
%"block%15":                                     // block                   (159)
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     3                              // A = D + E3              [3]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     4                              // A = D + E4              [3]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        etd       6                              // D = E6                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     5                              // A = D + E5              [3]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        eta       6                              // A = E6                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       6                              // E6 = A                  [2]
        ldg       @featureSetSize                // D = @featureSetSize     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      6                              // D ?= E6                 [3]
        td0       39, %"block%12"                // E sge D                 [5]
        jmp       %"block%15"                    //                         [4]
%"block%12":                                     // block                   (247)
        ldg       @using_clusters                // D = @using_clusters     [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdnz      %"block%23"                    //                         [4]
        jl        %"block%55"                    //                         [6]
%"block%23":                                     // block                   (284)
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%26"                    //                         [4]
        jmp       %"block%30"                    //                         [4]
%"block%26":                                     // block                   (319)
        ldg       @accuracies                    // D = @accuracies         [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       3                              // E3 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       4                              // E4 = D                  [2]
%"block%47":                                     // block                   (363)
        etd       4                              // D = E4                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     3                              // A = D + E3              [3]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        eta       4                              // A = E4                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       4                              // E4 = A                  [2]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      4                              // D ?= E4                 [3]
        td0       39, %"block%30"                // E sge D                 [5]
        jmp       %"block%47"                    //                         [4]
%"block%30":                                     // block                   (423)
        ldg       @cluster_samples               // D = @cluster_samples    [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @total_evaluated_sample_count  // D = @total_evaluated_sample_count[24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @samples_since_token           // D = @samples_since_token[24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        ldg       @cluster_count                 // D = @cluster_count      [24]
        dta                                      // A = D                   [2]
        lsr       3                              // D = -1                  [3]
        add                                      // D += *A                 [2]
        xore      2                              // D ^= E2                 [3]
        bdnz      %tn%1                          //                         [4]
%tn%0:                                           // block                   (584)
        lsr       0                              // D = 0x0                 [3]
        dte       3                              // E3 = D                  [2]
        jmp       %tn%2                          //                         [4]
%tn%1:                                           // block                   (593)
        eta       2                              // A = E2                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       3                              // E3 = A                  [2]
%tn%2:                                           // block                   (600)
        ldg       @upstream                      // D = @upstream           [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        etd       3                              // D = E3                  [2]
        wrd                                      // *A = D                  [2]
        ldg       @token                         // D = @token              [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dte       3                              // E3 = D                  [2]
        eta       2                              // A = E2                  [2]
        baz       %"block%53"                    //                         [4]
%"block%54":                                     // block                   (682)
        lsr       0                              // D = 0x0                 [3]
        eta       3                              // A = E3                  [2]
        wrd                                      // *A = D                  [2]
        jmpe      1                              // return void             [3]
%"block%53":                                     // block                   (692)
        lsr       1                              // D = 0x1                 [3]
        eta       3                              // A = E3                  [2]
        wrd                                      // *A = D                  [2]
        jmpe      1                              // return void             [3]
%"block%55":                                     // block                   (702)
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        bdgtz     %"block%58"                    //                         [4]
        jmp       %"block%68"                    //                         [4]
%"block%58":                                     // block                   (737)
        ldg       @accuracies                    // D = @accuracies         [24]
        dta                                      // A = D                   [2]
        etd       2                              // D = E2                  [2]
        sllc      3                              // D <<= 3                 [4]
        add                                      // D += *A                 [2]
        dta                                      // A = D                   [2]
        lde       2                              // E2 = *A                 [3]
        lsr       0                              // D = 0x0                 [3]
        dte       3                              // E3 = D                  [2]
%"block%62":                                     // block                   (781)
        etd       3                              // D = E3                  [2]
        sllc      3                              // D <<= 3                 [4]
        dpeta     2                              // A = D + E2              [3]
        lsr       0                              // D = 0x0                 [3]
        wrd                                      // *A = D                  [2]
        eta       3                              // A = E3                  [2]
        aaimb     1                              // A += 1                  [3]
        ate       3                              // E3 = A                  [2]
        ldg       @node_count                    // D = @node_count         [24]
        dta                                      // A = D                   [2]
        ld                                       // D = *A                  [1]
        cmpe      3                              // D ?= E3                 [3]
        td0       39, %"block%68"                // E sge D                 [5]
        jmp       %"block%62"                    //                         [4]
%"block%68":                                     // block                   (841)
        jmpe      1                              // return void             [3]
        .function_end                            // function size           (844)
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
