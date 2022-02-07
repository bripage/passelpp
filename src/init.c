//
// Created by bpage1 on 4/3/20.
//
// 2^22 = 4194304
// 2^24 = 16777216
//

#include "include/init.h"
#include "include/accuracy.h"

double SolveBeta(long num_clusters) {
    double start = 0.6;
    double end = 1.0;
    double mid = 0.5;
    double err = 0;
    if (num_clusters >= 2) {
        do {
            mid = (start + end) / 2;
            err = mid;
            for (long i = 2; i <= num_clusters; i++){
                err *= mid;
            }
            err += mid - 1;
            //err = pow(mid, num_clusters) + mid - 1;
            if (err > 0) {
                end = mid;
            }
            else {
                start = mid;
            }
        } while(fabs(err) > 0.001);
    }
    if (!num_clusters)
        mid = .0;
    return mid;
}

void parse_args(int argc, char * argv[]) {
    long num_arg;
    long i;
    double scaled_float;
    train_data_path = NULL;
    test_feature_path = NULL;
    non_standard_classes = 0;
    threads_per_cluster = 1;
    cluster_count = 1;
    samples_per_cluster = 1;
    long clusters = 0;

    for (i = 1; i < argc; i++) {
        if (!strcmp(argv[i], "--train-data")) {
            train_data_path = (char *) malloc(strlen(argv[i + 1]) * sizeof(char));
            strcpy(train_data_path, argv[i + 1]);
        } else if (!strcmp(argv[i], "--test-data")) {
            test_feature_path = (char *) malloc(strlen(argv[i + 1]) * sizeof(char));
            strcpy(test_feature_path, argv[i + 1]);
        } else if (!strcmp(argv[i], "-f")) {
            num_arg = atoi(argv[i + 1]) + 1;
            mw_replicated_init(&featureSetSize, num_arg);
            i++;
        } else if (!strcmp(argv[i], "--train-samples")) {
            num_arg = atoi(argv[i + 1]);
            mw_replicated_init(&train_sample_count, num_arg);
            i++;
        } else if (!strcmp(argv[i], "--class-values")) {
            num_arg = atoi(argv[i + 1]);
            class1 = num_arg;
            num_arg = atoi(argv[i + 2]);
            class2 = num_arg;
            non_standard_classes = 1;
            i += 2;
        } else if (!strcmp(argv[i], "-e")) {
            num_arg = atoi(argv[i + 1]);
            mw_replicated_init(&epochs, num_arg);
            i++;
        } else if (!strcmp(argv[i], "--train-points")) {
            num_arg = atoi(argv[i + 1]) + train_sample_count;
            mw_replicated_init(&total_train_points, num_arg);
            i++;
        } else if (!strcmp(argv[i], "--test-samples")) {
            num_arg = atoi(argv[i + 1]);
            mw_replicated_init(&test_sample_count, num_arg);
            i++;
        } else if (!strcmp(argv[i], "--test-points")) {
            num_arg = atoi(argv[i + 1]) + test_sample_count;
            mw_replicated_init(&total_test_points, num_arg);
            i++;
        } else if (!strcmp(argv[i], "--threads-per-cluster")) {
            num_arg = atoi(argv[i + 1]);
            mw_replicated_init(&threads_per_cluster, num_arg);
            i++;
        } else if (!strcmp(argv[i], "--initial-step-size")) {
            sscanf(argv[i + 1], "%lf", &scaled_float);
            double d_temp = scaled_float * 16777216;
            long eta_init = (long) d_temp;
            mw_replicated_init(&eta, eta_init);
            i++;
        } else if (!strcmp(argv[i], "--initial-step-decay")) {
            sscanf(argv[i + 1], "%lf", &scaled_float);
            double d_temp = scaled_float * 16777216;
            long gamma_init = (long) d_temp;
            mw_replicated_init(&gamma, gamma_init);
            i++;
        } else if (!strcmp(argv[i], "-c")) {
            num_arg = atoi(argv[i + 1]);
            mw_replicated_init(&cluster_count, num_arg);
            i++;
        } else if (!strcmp(argv[i], "--test-id")) {
            num_arg = atoi(argv[i + 1]);
            mw_replicated_init(&test_id, num_arg);
            i++;
        } else if (!strcmp(argv[i], "--update-period")) {
            num_arg = atoi(argv[i + 1]);
            mw_replicated_init(&update_period, num_arg);
            i++;
        } else if (!strcmp(argv[i], "--using-clusters")) {
            clusters = 1;
        }
    }
    mw_replicated_init(&node_count, NUM_NODES());
    mw_replicated_init(&using_clusters, clusters);
    //printf("Using Multiple Clusters: %ld\n", using_clusters);
    //fflush(stdout);
    long ltmp = ceil((double) train_sample_count / (double) cluster_count);
    mw_replicated_init(&samples_per_cluster, ltmp);
    if (clusters) {
        //printf("samples per cluster: %ld\n", samples_per_cluster);
        //fflush(stdout);
    }

    /** Solve for Beta (based on cluster count) */
    double dtmp = SolveBeta(cluster_count);
    dtmp *= 16777216; // shift 24 bits
    ltmp = (long) dtmp;
    mw_replicated_init(&beta, ltmp);

    ltmp = beta;
    for (long i = 1; i <= cluster_count - 1; i++) {
        ltmp *= beta;
        ltmp >>= 24;
    }
    mw_replicated_init(&lambda, ltmp);

    ltmp = 16777216 - lambda;
    mw_replicated_init(&one_min_lambda, ltmp);

    //printf("--- Parsing Arguments Complete ---\n");
    //fflush(stdout);
}

void populateTrainingData() {
    //printf("inside populate_data()\n");
    //fflush(stdout);

    long i,
            sample = -1,
            feature,
            fixed_value,
            class;
    long n;
    long sample_count = -1;
    long current_sample = -1;
    long* sample_placement = (long*) malloc(cluster_count * sizeof(long));
    long* data_placement = (long*) malloc(cluster_count * sizeof(long));
    for (n = 0; n < cluster_count; n++) {
        data_placement[n] = 0;
        sample_placement[n] = 0;
    }
    train_data = NULL;
    train_data = fopen(train_data_path, "rb");
    if (train_data == NULL) {
        printf("Failed to open training feature file.\n");
        exit(1);
    }

    long non_zeros = total_train_points - train_sample_count;
    long points;
    long *binBuffer;
    long bytesRead;
    points = non_zeros * 4;
    //printf("points = %ld\n", points);
    //fflush(stdout);


    if (non_zeros > 30000000){
        long chunk_points = 30000000*4;
        long chunk_count = 0, final_chunk_points = 0;

        //printf("chunk_points = %ld\n", chunk_points);
        //fflush(stdout);
        chunk_count = (non_zeros) / 30000000;
        final_chunk_points = points - (chunk_count * chunk_points);
        //printf("final_chunk_points = %ld\n", final_chunk_points);
        //fflush(stdout);
        if (final_chunk_points != 0){
            chunk_count++;
        }
        //printf("chunk_count = %ld\n", chunk_count);
        //fflush(stdout);

        binBuffer = (long *) malloc(chunk_points * sizeof(long));
        //printf("Done allocating initial buffer chunk\n");
        //fflush(stdout);
        if (binBuffer == NULL) {
            printf("Failed to allocate initial buffer chunk.\n");
            exit(1);
        }
        bytesRead = fread(binBuffer, sizeof(long), chunk_points, train_data);
        //printf("bytesRead = %ld\n", bytesRead);
        //fflush(stdout);

        for (long c = 0; c < chunk_count; c++) {
            for (i = 0; i < chunk_points; i += 4) {
                sample = binBuffer[i];
                feature = binBuffer[i + 1];
                fixed_value = binBuffer[i + 2];
                class = binBuffer[i + 3];

                if (non_standard_classes) {
                    if (class == class1) {
                        class = -1;
                    } else if (class == class2) {
                        class = 1;
                    } else {
                        printf("ERROR: Training Data classes do not match class range\n");
                        fflush(stdout);
                        exit(2);
                    }
                }

                if (sample != current_sample) {
                    sample_count++;
                    n = sample_count / samples_per_cluster;
                    sample_placement[n]++;
                    cluster_samples[n]++;

                    train_s[n][sample_placement[n]] = data_placement[n];
                    train_c[n][sample_placement[n]] = class;
                    train_f[n][data_placement[n]] = 0;
                    train_v[n][data_placement[n]] = 1;
                    feat_deg_recip[0][0]++;
                    data_placement[n]++;
                    train_f[n][data_placement[n]] = feature;
                    train_v[n][data_placement[n]] = fixed_value;
                    feat_deg_recip[0][feature]++;
                    current_sample = sample;
                } else {
                    train_f[n][data_placement[n]] = feature;
                    train_v[n][data_placement[n]] = fixed_value;
                    feat_deg_recip[0][feature]++;
                }
                data_placement[n]++;
            }

            if (chunk_count > 1 && c != chunk_count - 1) {
                if (c + 1 == chunk_count - 1) {
                    //printf("about to free buffer\n");
                    //fflush(stdout);
                    free(binBuffer);
                    printf("allocating buffer for final chunk\n");
                    fflush(stdout);
                    binBuffer = (long *) malloc(final_chunk_points * sizeof(long));

                    bytesRead = fread(binBuffer, sizeof(long), final_chunk_points, train_data);
                    if (bytesRead != final_chunk_points) {
                        //printf("final_chunk_points = %ld, %ld, bytesRead = %ld\n", final_chunk_points, final_chunk_points*sizeof(long),bytesRead);
                        //fflush(stdout);
                        printf("Error in reading final file chunk\n");
                        exit(1);
                    }
                    printf("final file chunk copied into buffer\n");
                    fflush(stdout);
                    chunk_points = final_chunk_points;
                } else {
                    //printf("reading in next chunk\n");
                    //fflush(stdout);
                    bytesRead = fread(binBuffer, sizeof(long), chunk_points, train_data);
                    if (bytesRead != chunk_points) {
                        printf("Error in reading file chunk %ld\n", c+1);
                        exit(1);
                    }
                    printf("file chunk %ld of %ld copied into buffer\n", c+1, chunk_count);
                    fflush(stdout);
                }
            }
        }
        for (n = 0; n < cluster_count; n++) {
            train_s[n][sample_placement[n] + 1] = data_placement[n]; // add sample id end ptr
        }

    } else {
        points = non_zeros * 4;
        binBuffer = (long *) malloc(points * sizeof(long));
        bytesRead = fread(binBuffer, sizeof(long), points, train_data);

        if (bytesRead != (points)) {
            printf("*** Feature File Read Failure ***\n");
            exit(1);
        }
        for (i = 0; i < points; i += 4) {
            sample = binBuffer[i];
            feature = binBuffer[i + 1];
            fixed_value = binBuffer[i + 2];
            class = binBuffer[i + 3];

            if (non_standard_classes) {
                if (class == class1) {
                    class = -1;
                } else if (class == class2) {
                    class = 1;
                } else {
                    printf("ERROR: Training Data classes do not match class range\n");
                    fflush(stdout);
                    exit(2);
                }
            }

            if (sample != current_sample) {
                sample_count++;
                current_sample = sample;
                n = sample_count / samples_per_cluster;
                sample_placement[n]++;
                cluster_samples[n]++;

                train_s[n][sample_placement[n]] = data_placement[n];
                train_c[n][sample_placement[n]] = class;
                train_f[n][data_placement[n]] = 0;
                train_v[n][data_placement[n]] = 1;
                feat_deg_recip[0][0]++;
                data_placement[n]++;
                train_f[n][data_placement[n]] = feature;
                train_v[n][data_placement[n]] = fixed_value;
                feat_deg_recip[0][feature]++;
            } else {
                train_f[n][data_placement[n]] = feature;
                train_v[n][data_placement[n]] = fixed_value;
                feat_deg_recip[0][feature]++;
            }
            data_placement[n]++;
        }

        for (n = 0; n < cluster_count; n++) {
            train_s[n][sample_placement[n] + 1] = data_placement[n]; // add sample id end ptr
            train_s[n][0] = 0;
        }
    }

    fclose(train_data);
    free(binBuffer);

    double d_temp;
    long l_temp;
    for (long i = 0; i <= featureSetSize; i++) {
        d_temp = 1.0;
        d_temp /= (double) feat_deg_recip[0][i];
        d_temp *= 16777216;
        l_temp = (long) d_temp;
        for (n = 0; n < cluster_count; n++) {
            feat_deg_recip[n][i] = l_temp;
        }
    }

    //printf("SAMPLE COUNT: %ld\n", sample_count);
    //fflush(stdout);
    //printf("populate_data() done\n");
    //fflush(stdout);
}

void populateTrainingDataStripped() {
    //printf("inside populate_stripped_data()\n");
    //fflush(stdout);

    long i, j = 0,
            sample = -1,
            feature,
            fixed_value,
            class;
    long sample_count = -1;
    long current_sample = -1;
    train_data = NULL;
    train_data = fopen(train_data_path, "rb");
    if (train_data == NULL) {
        printf("Failed to open training feature file.\n");
        exit(1);
    }

    long non_zeros = total_train_points - train_sample_count;
    long points;
    long *binBuffer;
    long bytesRead;
    points = non_zeros * 4;
    //printf("points = %ld\n", points);
    //fflush(stdout);


    if (non_zeros > 30000000) {
        long chunk_points = 30000000 * 4;
        long chunk_count = 0, final_chunk_points = 0;

        //printf("chunk_points = %ld\n", chunk_points);
        //fflush(stdout);
        chunk_count = (non_zeros) / 30000000;
        final_chunk_points = points - (chunk_count * chunk_points);
        //printf("final_chunk_points = %ld\n", final_chunk_points);
        //fflush(stdout);
        if (final_chunk_points != 0) {
            chunk_count++;
        }
        //printf("chunk_count = %ld\n", chunk_count);
        //fflush(stdout);

        binBuffer = (long *) malloc(chunk_points * sizeof(long));
        //printf("Done allocating initial buffer chunk\n");
        //fflush(stdout);
        if (binBuffer == NULL) {
            printf("Failed to allocate initial buffer chunk.\n");
            exit(1);
        }
        bytesRead = fread(binBuffer, sizeof(long), chunk_points, train_data);
        //printf("bytesRead = %ld\n", bytesRead);
        //fflush(stdout);

        for (long c = 0; c < chunk_count; c++) {
            for (i = 0; i < chunk_points; i += 4) {
                sample = binBuffer[i];
                feature = binBuffer[i + 1];
                fixed_value = binBuffer[i + 2];
                class = binBuffer[i + 3];

                if (non_standard_classes) {
                    if (class == class1) {
                        class = -1;
                    } else if (class == class2) {
                        class = 1;
                    } else {
                        printf("ERROR: Training Data classes do not match class range\n");
                        fflush(stdout);
                        exit(2);
                    }
                }

                if (sample != current_sample) {
                    sample_count++;
                    train_s_stripped[sample_count] = j;
                    train_c_stripped[sample_count] = class;
                    train_f_stripped[j] = 0;
                    train_v_stripped[j] = 1;
                    feat_deg_recip_stripped[0]++;
                    j++;
                    train_f_stripped[j] = feature;
                    train_v_stripped[j] = fixed_value;
                    feat_deg_recip_stripped[feature]++;
                    current_sample = sample;
                } else {
                    train_f_stripped[j] = feature;
                    train_v_stripped[j] = fixed_value;
                    feat_deg_recip_stripped[feature]++;
                }
                j++;
            }

            if (chunk_count > 1 && c != chunk_count - 1) {
                if (c + 1 == chunk_count - 1) {
                    //printf("about to free buffer\n");
                    //fflush(stdout);
                    free(binBuffer);
                    printf("allocating buffer for final chunk\n");
                    fflush(stdout);
                    binBuffer = (long *) malloc(final_chunk_points * sizeof(long));

                    bytesRead = fread(binBuffer, sizeof(long), final_chunk_points, train_data);
                    if (bytesRead != final_chunk_points) {
                        //printf("final_chunk_points = %ld, %ld, bytesRead = %ld\n", final_chunk_points,
                               final_chunk_points * sizeof(long), bytesRead);
                        //fflush(stdout);
                        printf("Error in reading final file chunk\n");
                        exit(1);
                    }
                    //printf("final file chunk copied into buffer\n");
                    //fflush(stdout);
                    chunk_points = final_chunk_points;
                } else {
                    //printf("reading in next chunk\n");
                    //fflush(stdout);
                    bytesRead = fread(binBuffer, sizeof(long), chunk_points, train_data);
                    if (bytesRead != chunk_points) {
                        printf("Error in reading file chunk %ld\n", c+1);
                        exit(1);
                    }
                    printf("file chunk %ld of %ld copied into buffer\n", c+1, chunk_count);
                    fflush(stdout);
                }
            }
        }
        train_s_stripped[sample_count + 1] = j; // add sample id end ptr
    } else {
        points = non_zeros * 4;
        binBuffer = (long *) malloc(points * sizeof(long));
        bytesRead = fread(binBuffer, sizeof(long), points, train_data);

        if (bytesRead != (points)) {
            printf("*** Feature File Read Failure ***\n");
            exit(1);
        }
        for (i = 0; i < points; i += 4) {
            sample = binBuffer[i];
            feature = binBuffer[i + 1];
            fixed_value = binBuffer[i + 2];
            class = binBuffer[i + 3];

            if (non_standard_classes) {
                if (class == class1) {
                    class = -1;
                } else if (class == class2) {
                    class = 1;
                } else {
                    printf("ERROR: Training Data classes do not match class range\n");
                    fflush(stdout);
                    exit(2);
                }
            }

            if (sample != current_sample) {
                sample_count++;
                current_sample = sample;
                train_s_stripped[sample_count] = j;
                train_c_stripped[sample_count] = class;
                train_f_stripped[j] = 0;
                train_v_stripped[j] = 1;
                feat_deg_recip_stripped[0]++;
                j++;
                train_f_stripped[j] = feature;
                train_v_stripped[j] = fixed_value;
                feat_deg_recip_stripped[feature]++;
            } else {
                train_f_stripped[j] = feature;
                train_v_stripped[j] = fixed_value;
                feat_deg_recip_stripped[feature]++;
            }
            j++;
        }

        train_s_stripped[sample_count + 1] = j; // add sample id end ptr
        train_s_stripped[0] = 0;
    }
    fclose(train_data);
    free(binBuffer);

    //("SAMPLE COUNT: %ld\n", sample_count);
    //fflush(stdout);

    double d_temp;
    long l_temp;
    for (long i = 0; i <= featureSetSize; i++) {
        d_temp = 1.0;
        d_temp /= (double) feat_deg_recip_stripped[i];
        d_temp *= 16777216;
        l_temp = (long) d_temp;
        feat_deg_recip_stripped[i] = l_temp;
    }

    //printf("populate_data() done\n");
    //fflush(stdout);
}

void init_cluster(long n) {
    for (long i = 0; i < cluster_count; i++){
        accuracies[n][i] = 0;
    }
    cluster_samples[n] = 0;
    total_evaluated_sample_count[n] = 0;
    samples_since_token[n] = 0;
    for (long i = 0; i < featureSetSize; i++) {
        model_vec[n][i] = 0;
        working_vec[n][i] = 0;
        feat_deg_recip[n][i] = 0;
    }
    if (n != cluster_count-1) {
        upstream[n] = n+1;
    } else {
        upstream[n] = 0;
    }
    if (n == 0){
        token[n] = 1;
    } else {
        token[n] = 0;
    }
}

void init() {
    long *l1d_ptr;
    long** l2d_ptr;
    l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), NUM_NODES() * sizeof(long));
    for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
        long ***ptr = (long ***) mw_get_nth(&accuracies, nlet);
        *ptr = l2d_ptr;
    }

    if (using_clusters) {
        long non_zeros_per_cluster = ceil((double) samples_per_cluster * (total_train_points / (double) train_sample_count));
        printf("non_zeros_per_cluster = %ld\n", non_zeros_per_cluster);
        fflush(stdout);

        l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), featureSetSize * sizeof(long));
        for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
            long ***ptr = (long ***) mw_get_nth(&model_vec, nlet);
            *ptr = l2d_ptr;
        }

        l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), featureSetSize * sizeof(long));
        for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
            long ***ptr = (long ***) mw_get_nth(&working_vec, nlet);
            *ptr = l2d_ptr;
        }

        l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), featureSetSize * sizeof(long));
        for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
            long ***ptr = (long ***) mw_get_nth(&feat_deg_recip, nlet);
            *ptr = l2d_ptr;
        }

        l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), (samples_per_cluster + 1) * sizeof(long));
        for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
            long ***ptr = (long ***) mw_get_nth(&train_s, nlet);
            *ptr = l2d_ptr;
        }

        l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), samples_per_cluster * sizeof(long));
        for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
            long ***ptr = (long ***) mw_get_nth(&train_c, nlet);
            *ptr = l2d_ptr;
        }

        l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), non_zeros_per_cluster * sizeof(long));
        for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
            long ***ptr = (long ***) mw_get_nth(&train_f, nlet);
            *ptr = l2d_ptr;
        }

        l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), non_zeros_per_cluster * sizeof(long));
        for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
            long ***ptr = (long ***) mw_get_nth(&train_v, nlet);
            *ptr = l2d_ptr;
        }

        l1d_ptr = (long *) mw_malloc1dlong(NUM_NODES());
        mw_replicated_init((long *) &total_evaluated_sample_count, (long) l1d_ptr);

        l1d_ptr = (long *) mw_malloc1dlong(NUM_NODES());
        mw_replicated_init((long *) &cluster_samples, (long) l1d_ptr);

        l1d_ptr = (long *) mw_malloc1dlong(NUM_NODES());
        mw_replicated_init((long *) &upstream, (long) l1d_ptr);

        l1d_ptr = (long *) mw_malloc1dlong(NUM_NODES());
        mw_replicated_init((long *) &token, (long) l1d_ptr);

        l1d_ptr = (long *) mw_malloc1dlong(NUM_NODES());
        mw_replicated_init((long *) &samples_since_token, (long) l1d_ptr);
    } else {
        l1d_ptr = (long *) mw_malloc1dlong((train_sample_count + 1));
        mw_replicated_init((long *) &train_s_stripped, (long) l1d_ptr);

        l1d_ptr = (long *) mw_malloc1dlong(total_train_points);
        mw_replicated_init((long *) &train_f_stripped, (long) l1d_ptr);

        l1d_ptr = (long *) mw_malloc1dlong(total_train_points);
        mw_replicated_init((long *) &train_v_stripped, (long) l1d_ptr);

        l1d_ptr = (long *) mw_malloc1dlong(train_sample_count);
        mw_replicated_init((long *) &train_c_stripped, (long) l1d_ptr);

        l1d_ptr = (long *) mw_malloc1dlong(featureSetSize);
        mw_replicated_init((long *) &model_vec_stripped, (long) l1d_ptr);

        l1d_ptr = (long *) mw_malloc1dlong(featureSetSize);
        mw_replicated_init((long *) &feat_deg_recip_stripped, (long) l1d_ptr);
    }

    l1d_ptr = (long *) mw_malloc1dlong((test_sample_count + 1));
    mw_replicated_init((long *) &test_s_stripped, (long) l1d_ptr);

    l1d_ptr = (long *) mw_malloc1dlong(total_test_points);
    mw_replicated_init((long *) &test_f_stripped, (long) l1d_ptr);

    l1d_ptr = (long *) mw_malloc1dlong(total_test_points);
    mw_replicated_init((long *) &test_v_stripped, (long) l1d_ptr);

    l1d_ptr = (long *) mw_malloc1dlong(test_sample_count);
    mw_replicated_init((long *) &test_c_stripped, (long) l1d_ptr);

    printf("--- Memmory Allocation Complete ---\n");
    fflush(stdout);

    if (using_clusters){
        for (long n = 0; n < cluster_count; n++) {
            cilk_migrate_hint(&model_vec[n]);
            cilk_spawn init_cluster(n);
        }
        cilk_sync;
    } else {
        for (long i = 0; i < featureSetSize; i++){
            model_vec_stripped[i] = 0;
            feat_deg_recip_stripped[i] = 0;
        }
    }

    printf("--- Memmory Initialization Complete ---\n");
    fflush(stdout);
    if (using_clusters) {
        MIGRATE(&model_vec[0]);
        populateTrainingData();
    } else {
        MIGRATE(&model_vec_stripped[0]);
        populateTrainingDataStripped();
    }
    populateTestDataStripped();

	printf("--- Initialization Complete ---\n");
	fflush(stdout);
}
