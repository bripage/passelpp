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
    token_type = 1;
    token_count = 1;
    token_initial_spacing = 1;

    for (i = 1; i < argc; i++) {
        if (!strcmp(argv[i], "--train-data")) {
            train_data_path = (char *) malloc(strlen(argv[i + 1]) * sizeof(char));
            strcpy(train_data_path, argv[i + 1]);
            //printf("train_data_path = %s\n",train_data_path);
            //fflush(stdout);
        } else if (!strcmp(argv[i], "--test-data")) {
            test_feature_path = (char *) malloc(strlen(argv[i + 1]) * sizeof(char));
            strcpy(test_feature_path, argv[i + 1]);
            //printf("test_data_path = %s\n", test_feature_path);
            //fflush(stdout);
        } else if (!strcmp(argv[i], "-f")) {
            num_arg = atoi(argv[i + 1]) + 1;
            mw_replicated_init(&featureSetSize, num_arg);
            //printf("featureSetSize = %ld\n", featureSetSize);
            //fflush(stdout);
            i++;
        } else if (!strcmp(argv[i], "--train-samples")) {
            num_arg = atoi(argv[i + 1]);
            mw_replicated_init(&train_sample_count, num_arg);
            //printf("train_sample_count = %ld\n", train_sample_count);
            //fflush(stdout);
            i++;
        } else if (!strcmp(argv[i], "--regularization-scalar")) {
            num_arg = atoi(argv[i + 1]);
            mw_replicated_init(&regularization_scalar, num_arg);
            //printf("regularization_scalar = %ld\n", regularization_scalar);
            //fflush(stdout);
            i++;
        } else if (!strcmp(argv[i], "--class-values")) {
            num_arg = atoi(argv[i + 1]);
            class1 = num_arg;
            num_arg = atoi(argv[i + 2]);
            class2 = num_arg;
            //printf("classes: {%ld,%ld}\n", class1, class2);
            //fflush(stdout);
            non_standard_classes = 1;
            i += 2;
        } else if (!strcmp(argv[i], "-e")) {
            num_arg = atoi(argv[i + 1]);
            mw_replicated_init(&epochs, num_arg);
            //printf("Epoch Count: %ld\n", epochs);
            //fflush(stdout);
            i++;
        } else if (!strcmp(argv[i], "--train-points")) {
            num_arg = atoi(argv[i + 1]) + train_sample_count;
            mw_replicated_init(&total_train_points, num_arg);
            //printf("total_train_points = %ld\n", total_train_points);
            //fflush(stdout);
            i++;
        } else if (!strcmp(argv[i], "--test-samples")) {
            num_arg = atoi(argv[i + 1]);
            mw_replicated_init(&test_sample_count, num_arg);
            //printf("test_sample_count = %ld\n", test_sample_count);
            //fflush(stdout);
            i++;
        } else if (!strcmp(argv[i], "--test-points")) {
            num_arg = atoi(argv[i + 1]) + test_sample_count;
            mw_replicated_init(&total_test_points, num_arg);
            //printf("total_test_points = %ld\n", total_test_points);
            //fflush(stdout);
            i++;
        } else if (!strcmp(argv[i], "--threads-per-cluster")) {
            num_arg = atoi(argv[i + 1]);
            mw_replicated_init(&threads_per_cluster, num_arg);
            //printf("Threads Per Cluster= %ld\n", threads_per_cluster);
            //fflush(stdout);
            i++;
        } else if (!strcmp(argv[i], "--initial-step-size")) {
            sscanf(argv[i + 1], "%lf", &scaled_float);
            double d_temp = scaled_float * 16777216;
            long eta_init = (long) d_temp;
            mw_replicated_init(&eta, eta_init);
            //printf("initial step size: %lf\n", scaled_float);
            //fflush(stdout);
            i++;
        } else if (!strcmp(argv[i], "--initial-step-decay")) {
            sscanf(argv[i + 1], "%lf", &scaled_float);
            double d_temp = scaled_float * 16777216;
            long gamma_init = (long) d_temp;
            mw_replicated_init(&gamma, gamma_init);
            //printf("initial_step_decay = %lf\n", scaled_float);
            //fflush(stdout);
            i++;
        } else if (!strcmp(argv[i], "-c")) {
            num_arg = atoi(argv[i + 1]);
            mw_replicated_init(&cluster_count, num_arg);
            //printf("Cluster Count: %ld\n", cluster_count);
            //fflush(stdout);
            i++;
        } else if (!strcmp(argv[i], "--test-id")) {
            num_arg = atoi(argv[i + 1]);
            mw_replicated_init(&test_id, num_arg);
            //printf("Test #: %ld\n", test_id);
            //fflush(stdout);
            i++;
        } else if (!strcmp(argv[i], "--update-type")) {
            num_arg = atoi(argv[i + 1]);
            mw_replicated_init(&update_type, num_arg);
            i++;
        } else if (!strcmp(argv[i], "--updater-count")) {
            num_arg = atoi(argv[i + 1]);
            mw_replicated_init(&updater_count, num_arg);
            i++;
        }
    }

    /** Solve for Beta (based on cluster count) */
    double dtmp = SolveBeta(cluster_count);
    dtmp *= 16777216; // shift 24 bits
    long ltmp = (long) dtmp;
    mw_replicated_init(&beta, ltmp);

    ltmp = ceil((double) train_sample_count / (double) cluster_count);
    mw_replicated_init(&samples_per_cluster, ltmp);
    printf("samples per cluster: %ld\n", samples_per_cluster);
    fflush(stdout);

    ltmp = beta;
    for (long i = 1; i <= cluster_count - 1; i++) {
        ltmp *= beta;
        ltmp >>= 24;
    }
    mw_replicated_init(&lambda, ltmp);

    ltmp = 16777216 - lambda;
    mw_replicated_init(&one_min_lambda, ltmp);

    printf("--- Parsing Arguments Complete ---\n");
    fflush(stdout);
}

void populateTrainingData() {
    printf("inside populate_data()\n");
    fflush(stdout);

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

        printf("chunk_points = %ld\n", chunk_points);
        fflush(stdout);
        chunk_count = (non_zeros) / 30000000;
        final_chunk_points = points - (chunk_count * chunk_points);
        printf("final_chunk_points = %ld\n", final_chunk_points);
        fflush(stdout);
        if (final_chunk_points != 0){
            chunk_count++;
        }
        printf("chunk_count = %ld\n", chunk_count);
        fflush(stdout);

        binBuffer = (long *) malloc(chunk_points * sizeof(long));
        printf("Done allocating initial buffer chunk\n");
        fflush(stdout);
        if (binBuffer == NULL) {
            printf("Failed to allocate initial buffer chunk.\n");
            exit(1);
        }
        bytesRead = fread(binBuffer, sizeof(long), chunk_points, train_data);
        printf("bytesRead = %ld\n", bytesRead);
        fflush(stdout);

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
                    printf("about to free buffer\n");
                    fflush(stdout);
                    free(binBuffer);
                    printf("allocating buffer for final chunk\n");
                    fflush(stdout);
                    binBuffer = (long *) malloc(final_chunk_points * sizeof(long));

                    bytesRead = fread(binBuffer, sizeof(long), final_chunk_points, train_data);
                    if (bytesRead != final_chunk_points) {
                        printf("final_chunk_points = %ld, %ld, bytesRead = %ld\n", final_chunk_points, final_chunk_points*sizeof(long),bytesRead);
                        fflush(stdout);
                        printf("Error in reading final file chunk\n");
                        exit(1);
                    }
                    printf("final file chunk copied into buffer\n");
                    fflush(stdout);
                    chunk_points = final_chunk_points;
                } else {
                    printf("reading in next chunk\n");
                    fflush(stdout);
                    bytesRead = fread(binBuffer, sizeof(long), chunk_points, train_data);
                    if (bytesRead != chunk_points) {
                        printf("Error in reading file chunk %ld\n", i);
                        exit(1);
                    }
                    printf("file chunk %ld copied into buffer\n", i);
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

    printf("SAMPLE COUNT: %ld\n", sample_count);
    fflush(stdout);
    printf("populate_data() done\n");
    fflush(stdout);
}

void init_cluster(long n){
    up_token[n] = 0;
    down_token[n] = 0;
    cluster_samples[n] = 0;
    upstream[n] = 0;
    downstream[n] = 0;
    total_evaluated_sample_count[n] = 0;
    epoch_running[n] = 0;

    for (long i = 0; i < cluster_count; i++){
        update_targets[n][i] = 0;
    }
    for (long i = 0; i < featureSetSize; i++) {
        working_vec[n][i] = 0;
        model_vec[n][i] = 0;
        update_vec[n][i] = 0;
        feat_deg_recip[n][i] = 0;
    }

    // set update target (used for nearest neighbor update schemes)
    if (n != cluster_count-1 && cluster_count > 1) {
        upstream[n] = n+1;
    } else {
        upstream[n] = 0;
    }
    if (n != 0 && cluster_count > 1) {
        downstream[n] = n-1;
    } else {
        downstream[n] = cluster_count-1;
    }
}

void init() {
    long non_zeros_per_cluster = 2 * ceil((double) total_train_points / (double) cluster_count);
    printf("non_zeros_per_cluster = %ld\n", non_zeros_per_cluster);
    fflush(stdout);

    long** l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), featureSetSize * sizeof(long));
    for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
        long *** ptr = (long ***) mw_get_nth(&working_vec, nlet);
        *ptr = l2d_ptr;
    }

    l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), featureSetSize * sizeof(long));
    for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
        long *** ptr = (long ***) mw_get_nth(&model_vec, nlet);
        *ptr = l2d_ptr;
    }

    l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), featureSetSize * sizeof(long));
    for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
        long *** ptr = (long ***) mw_get_nth(&update_vec, nlet);
        *ptr = l2d_ptr;
    }

    l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), featureSetSize * sizeof(long));
    for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
        long *** ptr = (long ***) mw_get_nth(&feat_deg_recip, nlet);
        *ptr = l2d_ptr;
    }

    l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), (samples_per_cluster + 1) * sizeof(long));
    for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
        long *** ptr = (long ***) mw_get_nth(&train_s, nlet);
        *ptr = l2d_ptr;
    }

    l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), samples_per_cluster * sizeof(long));
    for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
        long *** ptr = (long ***) mw_get_nth(&train_c, nlet);
        *ptr = l2d_ptr;
    }

    l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), non_zeros_per_cluster * sizeof(long));
    for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
        long *** ptr = (long ***) mw_get_nth(&train_f, nlet);
        *ptr = l2d_ptr;
    }

    l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), non_zeros_per_cluster * sizeof(long));
    for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
        long *** ptr = (long ***) mw_get_nth(&train_v, nlet);
        *ptr = l2d_ptr;
    }

    long* l1d_ptr = (long *) mw_malloc1dlong(test_sample_count + 1);
    mw_replicated_init((long *) &test_s, (long) l1d_ptr);

    l1d_ptr = (long *) mw_malloc1dlong(test_sample_count);
    mw_replicated_init((long *) &test_c, (long) l1d_ptr);

    l1d_ptr = (long *) mw_malloc1dlong(total_test_points);
    mw_replicated_init((long *) &test_f, (long) l1d_ptr);

    l1d_ptr = (long *) mw_malloc1dlong(total_test_points);
    mw_replicated_init((long *) &test_v, (long) l1d_ptr);

    l1d_ptr = (long *) mw_malloc1dlong(NUM_NODES());
    mw_replicated_init((long *) &upstream, (long) l1d_ptr);

    l1d_ptr = (long *) mw_malloc1dlong(NUM_NODES());
    mw_replicated_init((long *) &downstream, (long) l1d_ptr);

    l1d_ptr = (long *) mw_malloc1dlong(NUM_NODES());
    mw_replicated_init((long *) &total_evaluated_sample_count, (long) l1d_ptr);

    l1d_ptr = (long *) mw_malloc1dlong(NUM_NODES());
    mw_replicated_init((long *) &cluster_sample_start, (long) l1d_ptr);

    l1d_ptr = (long *) mw_malloc1dlong(NUM_NODES());
    mw_replicated_init((long *) &cluster_sample_end, (long) l1d_ptr);

    l1d_ptr = (long *) mw_malloc1dlong(NUM_NODES());
    mw_replicated_init((long *) &cluster_samples, (long) l1d_ptr);

    l1d_ptr = (long *) mw_malloc1dlong(NUM_NODES());
    mw_replicated_init((long *) &epoch_running, (long) l1d_ptr);


    printf("--- Memmory Allocation Complete ---\n");
	fflush(stdout);
	for (long n = 0; n < cluster_count; n++){
	    cilk_migrate_hint(&model_vec[n]);
	    cilk_spawn init_cluster(n);
	}
	cilk_sync;

    printf("--- Memmory Initialization Complete ---\n");
    fflush(stdout);

    MIGRATE(&up_token[0]);
	populateTrainingData();
	populateTestData();

	printf("--- Initialization Complete ---\n");
	fflush(stdout);
}
