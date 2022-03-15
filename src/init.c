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
    long multi_load = 0;
    long rate = 0;

    for (i = 1; i < argc; i++) {
        if (!strcmp(argv[i], "--train-data")) {
            train_data_path = (char *) malloc(strlen(argv[i + 1]) * sizeof(char));
            strcpy(train_data_path, argv[i + 1]);
        } else if (!strcmp(argv[i], "--test-data")) {
            test_feature_path = (char *) malloc(strlen(argv[i + 1]) * sizeof(char));
            strcpy(test_feature_path, argv[i + 1]);
        } else if (!strcmp(argv[i], "-f")) {
            num_arg = atoi(argv[i + 1]);
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
            num_arg = atoi(argv[i + 1]);
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
        } else if (!strcmp(argv[i], "--multi-load")) {
            multi_load = 1;
        } else if (!strcmp(argv[i], "-r")) {
            num_arg = atoi(argv[i + 1]);
            mw_replicated_init(&clock_rate, num_arg);
            i++;
            rate = 1;
        }

    }
    if (rate == 0){
        printf("[ERROR]: Clock Rate NOT Set!\n");
        fflush(stdout);
        exit(-1);
    }
    mw_replicated_init(&node_count, NUM_NODES());
    mw_replicated_init(&using_clusters, clusters);
    printf("Using Multiple Clusters: %ld\n", using_clusters);
    fflush(stdout);
    mw_replicated_init(&multi_file_load, multi_load);
    printf("Multi File Load: %ld\n", multi_file_load);
    fflush(stdout);
    long ltmp = ceil(1.25 * ((double) train_sample_count / (double) cluster_count));
    mw_replicated_init(&samples_per_cluster, ltmp);
    if (clusters) {
        printf("samples per cluster: %ld\n", samples_per_cluster);
        fflush(stdout);
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
    printf("Update Period: %ld\n", update_period);
    fflush(stdout);

}

void node_load_from_n0(long t) {
    long i;
    long j = 0;
    long sample = -1;
    long feature;
    long fixed_value;
    long class;
    long sample_count = -1;
    long current_sample = -1;
    long bytesRead;
    long num_bytes;
    FILE *file_ptr;
    long chunk_points;
    long using_chunk_loading = 0;
    long file_points;
    long chunk_count;
    long non_zeros_per_cluster = ceil(1.10 * ((double) total_train_points / (double) cluster_count));

    data_read_buffer[0][t] = malloc(16777216 * sizeof(long));
    long* data_buffer = data_read_buffer[0][t];
    char *fname = malloc(strlen(train_data_path) + 10);
    sprintf(fname, "%sp%ld.bin", train_data_path, t);
    printf("node%ld filename = %s\n", t, fname);
    fflush(stdout);

    file_ptr = fopen(fname, "rb");
    if (file_ptr == NULL) {
        printf("Failed to open training feature file.\n");
        exit(1);
    }

    fseek(file_ptr, 0, SEEK_END);
    num_bytes = ftell(file_ptr);
    file_points = num_bytes / 8;
    fseek(file_ptr, 0, SEEK_SET);
    printf("node%ld non-zeros = %ld\n", t, file_points / 4);
    fflush(stdout);
    if (file_points / 4 >= non_zeros_per_cluster){
        printf("node%ld: file larger than allocated space %ld >= $ld\n", t, file_points / 4, non_zeros_per_cluster);
        fflush(stdout);
    }

    if (file_points > 16777216) {
        using_chunk_loading = 1;
        chunk_points = 16777216;
        chunk_count = file_points / chunk_points;
        long final_chunk_points = file_points - (chunk_count * chunk_points);
        if (final_chunk_points != 0) {
            chunk_count++;
        }
    }

    printf("Done opening files\n");
    fflush(stdout);

    if (using_chunk_loading) {
        for (long c = 0; c < chunk_count; c++) {
            printf("node%ld loading %ld/%ld\n", t, c, chunk_count);
            fflush(stdout);
            if (c + 1 == chunk_count - 1) {
                chunk_points = file_points - ((c+1) * 16777216);
                if (chunk_points > 16777216){
                    printf("ERROR: node%ld read buffer too small (%ld/16777216)\n", t, chunk_points);
                    fflush(stdout);
                }
                bytesRead = fread(data_buffer, sizeof(long), chunk_points, file_ptr);
                if (bytesRead != chunk_points) {
                    printf("ERROR: node%ld attempting to load past file end (%ld/%ld)\n", t, (c*16777216)+chunk_points, file_points);
                    fflush(stdout);
                    exit(1);
                }
            } else {
                chunk_points = 16777216;
                if (chunk_points > 16777216){
                    printf("ERROR: node%ld read buffer too small (%ld/16777216)\n", t, chunk_points);
                    fflush(stdout);
                }
                bytesRead = fread(data_buffer, sizeof(long), 16777216, file_ptr);
                if (bytesRead != chunk_points) {
                    printf("ERROR: node%ld attempting to load past file end (%ld/%ld)\n", t, (c*16777216)+chunk_points, file_points);
                    fflush(stdout);
                    exit(1);
                }
            }

            for (i = 0; i < chunk_points; i += 4) {
                sample = data_buffer[i];
                feature = data_buffer[i + 1];
                fixed_value = data_buffer[i + 2];
                class = data_buffer[i + 3];

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
                    train_s[t][sample_count] = j;
                    train_c[t][sample_count] = class;
                }
                train_f[t][j] = feature;
                train_v[t][j] = fixed_value;
                feat_deg_recip[0][feature]++;
                j++;
            }

        }
    } else {
        printf("Chunk Loading: FALSE\n");
        fflush(stdout);
        bytesRead = fread(data_buffer, sizeof(long), file_points, file_ptr);

        for (i = 0; i < file_points; i += 4) {
            sample = data_buffer[i];
            feature = data_buffer[i + 1];
            fixed_value = data_buffer[i + 2];
            class = data_buffer[i + 3];

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
                train_s[t][sample_count] = j;
                train_c[t][sample_count] = class;
            }
            train_f[t][j] = feature;
            train_v[t][j] = fixed_value;
            feat_deg_recip[0][feature]++;
            j++;
        }
    }
    printf("Done reading in data\n");
    fflush(stdout);
    if (sample_count+1 >= samples_per_cluster){
        printf("node%ld: sample %ld >= $ld\n", t, sample_count+1, samples_per_cluster);
        fflush(stdout);
    }
    train_s[t][sample_count + 1] = j; // add sample id end ptr
    train_s[t][0] = 0;
    cluster_samples[t] = sample_count + 1;
    printf("Done Finalizing Sample Pointers\n");
    fflush(stdout);

    fclose(file_ptr);
    free(data_read_buffer[0][t]);
    printf("Done freeing temp arrays\n");
    fflush(stdout);
}

void featpart_node_load_from_n0(long t) {
    //printf("thread %ld\n", t);
    //fflush(stdout);
    long i;
    long j = 0;
    long sample = -1;
    long feature;
    long fixed_value;
    long class;
    long sample_count = -1;
    long current_sample = -1;
    long bytesRead;
    long num_bytes;
    FILE *file_ptr;
    long chunk_points;
    long using_chunk_loading = 0;
    long file_points;
    long chunk_count;
    //long non_zeros_per_cluster = ceil(2.0 * ((double) total_train_points / (double) cluster_count));
    //printf("0\n");
    //fflush(stdout);
    data_read_buffer[0][t] = malloc(16777216 * sizeof(long));
    long* data_buffer = data_read_buffer[0][t];
    char *fname = malloc(strlen(train_data_path) + 10);
    sprintf(fname, "%sp%ld.bin", train_data_path, t);
    file_ptr = fopen(fname, "rb");
    if (file_ptr == NULL) {
        printf("Failed to open training feature file.\n");
        exit(1);
    }
    //printf("1\n");
    //fflush(stdout);
    fseek(file_ptr, 0, SEEK_END);
    num_bytes = ftell(file_ptr);
    file_points = num_bytes / 8;
    fseek(file_ptr, 0, SEEK_SET);
    //if (file_points / 4 >= non_zeros_per_cluster){
    //    printf("node%ld: file larger than allocated space %ld >= $ld\n", t, file_points / 4, non_zeros_per_cluster);
    //    fflush(stdout);
    //}
    //printf("2\n");
    //fflush(stdout);
    /*
    if (file_points > 16777216) {
        using_chunk_loading = 1;
        chunk_points = 16777216;
        chunk_count = file_points / chunk_points;
        long final_chunk_points = file_points - (chunk_count * chunk_points);
        if (final_chunk_points != 0) {
            chunk_count++;
        }
    }
    //printf("3\n");
    //fflush(stdout);
    if (using_chunk_loading) {
        for (long c = 0; c < chunk_count; c++) {
            printf("node%ld loading %ld/%ld\n", t, c, chunk_count);
            fflush(stdout);
            if (c + 1 == chunk_count - 1) {
                chunk_points = file_points - ((c+1) * 16777216);
                if (chunk_points > 16777216){
                    printf("ERROR: node%ld read buffer too small (%ld/16777216)\n", t, chunk_points);
                    fflush(stdout);
                }
                bytesRead = fread(data_buffer, sizeof(long), chunk_points, file_ptr);
                if (bytesRead != chunk_points) {
                    printf("ERROR: node%ld attempting to load past file end (%ld/%ld)\n", t, (c*16777216)+chunk_points, file_points);
                    fflush(stdout);
                    exit(1);
                }
            } else {
                chunk_points = 16777216;
                if (chunk_points > 16777216){
                    printf("ERROR: node%ld read buffer too small (%ld/16777216)\n", t, chunk_points);
                    fflush(stdout);
                }
                bytesRead = fread(data_buffer, sizeof(long), 16777216, file_ptr);
                if (bytesRead != chunk_points) {
                    printf("ERROR: node%ld attempting to load past file end (%ld/%ld)\n", t, (c*16777216)+chunk_points, file_points);
                    fflush(stdout);
                    exit(1);
                }
            }

            for (i = 0; i < chunk_points; i += 4) {
                sample = data_buffer[i];
                class = data_buffer[i + 3];
                if (sample != current_sample) {
                    sample_count++;
                    current_sample = sample;
                    train_s[t][sample_count] = j;
                    train_c[t][sample_count] = class;
                } else {
                    feature = data_buffer[i + 1] - 1;
                    fixed_value = data_buffer[i + 2];

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
                    train_f[t][j] = feature;
                    train_v[t][j] = fixed_value;
                    feat_deg_recip_stripped[feature]++;
                    j++;
                }
            }
        }
    } else {
     */
        bytesRead = fread(data_buffer, sizeof(long), file_points, file_ptr);
        //printf("4\n");
        //fflush(stdout);
        //printf("file_points = %ld\n", file_points);
        //fflush(stdout);
        for (i = 0; i < file_points; i += 4) {
            sample = data_buffer[i];
            class = data_buffer[i + 3];
            if (sample != current_sample) {
                sample_count++;
                current_sample = sample;
                train_s[t][sample_count] = j;
                if (train_s[t][sample_count] > 300000){
                    printf("ERROR: train_s[%ld][%ld]: %ld\n", t, sample_count, train_s[t][sample_count]);
                    fflush(stdout);
                }
                train_c[t][sample_count] = class;
            } else {
                feature = data_buffer[i + 1] - 1;
                fixed_value = data_buffer[i + 2];

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
                train_f[t][j] = feature;
                train_v[t][j] = fixed_value;
                feat_deg_recip_stripped[feature]++;
                j++;
            }
        }
    //}
    printf("%ld samples read\n", sample_count);
    fflush(stdout);
    train_s[t][sample_count + 1] = j; // add sample id end ptr
    train_s[t][0] = 0;
    //printf("6\n");
    //fflush(stdout);
    fclose(file_ptr);
    //printf("7\n");
    //fflush(stdout);
    free(data_read_buffer[0][t]);
    //printf("8\n");
    //fflush(stdout);
    node_nnzs[t] = j-1;
}

void populateTrainingData() {
    long i;
    long sample = -1;
    long feature;
    long fixed_value;
    long class;
    long n;
    long min_assignment;
    long sample_count = -1;
    long current_sample = -1;
    train_data = NULL;
    long non_zeros;
    long points;
    long *binBuffer;
    long bytesRead;

    long *sample_placement = (long *) malloc(cluster_count * sizeof(long));
    long *data_placement = (long *) malloc(cluster_count * sizeof(long));
    for (n = 0; n < cluster_count; n++) {
        data_placement[n] = 0;
        sample_placement[n] = 0;
    }

    non_zeros = total_train_points;
    points = non_zeros * 4;
    train_data = fopen(train_data_path, "rb");
    if (train_data == NULL) {
        printf("Failed to open training feature file.\n");
        exit(1);
    }

    if (non_zeros > 30000000) {
        long chunk_points = 30000000 * 4;
        long chunk_count = 0, final_chunk_points = 0;
        chunk_count = (non_zeros) / 30000000;
        final_chunk_points = points - (chunk_count * chunk_points);
        if (final_chunk_points != 0) {
            chunk_count++;
        }
        printf("chunk_count = %ld\n", chunk_count);
        fflush(stdout);

        binBuffer = (long *) malloc(chunk_points * sizeof(long));
        if (binBuffer == NULL) {
            printf("Failed to allocate initial buffer chunk.\n");
            exit(1);
        }
        bytesRead = fread(binBuffer, sizeof(long), chunk_points, train_data);

        for (long c = 0; c < chunk_count; c++) {
            for (i = 0; i < chunk_points; i += 4) {
                sample = binBuffer[i];
                feature = binBuffer[i + 1] - 1;
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
                    n = 0;
                    min_assignment = data_placement[0];
                    for (long m = 1; m < cluster_count; m++) {
                        if (data_placement[m] < min_assignment) {
                            n = m;
                        }
                    }

                    sample_placement[n]++;
                    cluster_samples[n]++;
                    train_s[n][sample_placement[n]] = data_placement[n];
                    train_c[n][sample_placement[n]] = class;
                    current_sample = sample;
                }
                train_f[n][data_placement[n]] = feature;
                train_v[n][data_placement[n]] = fixed_value;
                feat_deg_recip[0][feature]++;
                data_placement[n]++;
            }

            if (chunk_count > 1 && c != chunk_count - 1) {
                if (c + 1 == chunk_count - 1) {
                    free(binBuffer);
                    printf("allocating buffer for final chunk\n");
                    fflush(stdout);
                    binBuffer = (long *) malloc(final_chunk_points * sizeof(long));

                    bytesRead = fread(binBuffer, sizeof(long), final_chunk_points, train_data);
                    if (bytesRead != final_chunk_points) {
                        printf("Error in reading final file chunk\n");
                        exit(1);
                    }
                    printf("final file chunk copied into buffer\n");
                    fflush(stdout);
                    chunk_points = final_chunk_points;
                } else {
                    bytesRead = fread(binBuffer, sizeof(long), chunk_points, train_data);
                    if (bytesRead != chunk_points) {
                        printf("Error in reading file chunk %ld\n", c + 1);
                        exit(1);
                    }
                    printf("file chunk %ld of %ld copied into buffer\n", c + 1, chunk_count);
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
            feature = binBuffer[i + 1] - 1;
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

                //
                //  Bin pack by assigning next row to the cluster with the least amount of currently assigned nnz
                //
                n = 0;
                min_assignment = data_placement[0];
                for (long m = 1; m < cluster_count; m++) {
                    if (data_placement[m] < min_assignment) {
                        n = m;
                    }
                }
                sample_placement[n]++;
                cluster_samples[n]++;

                train_s[n][sample_placement[n]] = data_placement[n];
                train_c[n][sample_placement[n]] = class;
            }
            train_f[n][data_placement[n]] = feature;
            train_v[n][data_placement[n]] = fixed_value;
            feat_deg_recip[0][feature]++;
            data_placement[n]++;
        }

        for (n = 0; n < cluster_count; n++) {
            train_s[n][sample_placement[n] + 1] = data_placement[n]; // add sample id end ptr
            train_s[n][0] = 0;
        }
    }

    fclose(train_data);
    free(binBuffer);
}

void populateTraining_featurepartitioned() {
    printf("Starting feture partioned data load\n");
    fflush(stdout);

    long i,
            sample = -1,
            feature,
            fixed_value,
            class,
            n,
            assigned_node;
    long sample_count = -1;
    long current_sample = -1;
    long* data_placement = (long *) malloc(node_count * sizeof(long));
    for (n = 0; n < node_count; n++) {
        data_placement[n] = 0;
    }

    train_data = NULL;
    train_data = fopen(train_data_path, "rb");
    if (train_data == NULL) {
        printf("Failed to open training feature file.\n");
        exit(1);
    }

    long non_zeros = total_train_points;
    long points;
    long *binBuffer;
    long bytesRead;
    points = non_zeros * 4;

    if (non_zeros > 30000000) {
        long chunk_points = 30000000 * 4;
        long chunk_count = 0, final_chunk_points = 0;
        chunk_count = (non_zeros) / 30000000;
        final_chunk_points = points - (chunk_count * chunk_points);
        if (final_chunk_points != 0) {
            chunk_count++;
        }

        binBuffer = (long *) malloc(chunk_points * sizeof(long));
        if (binBuffer == NULL) {
            printf("Failed to allocate initial buffer chunk.\n");
            exit(1);
        }
        bytesRead = fread(binBuffer, sizeof(long), chunk_points, train_data);

        for (long c = 0; c < chunk_count; c++) {
            for (i = 0; i < chunk_points; i += 4) {
                sample = binBuffer[i];
                feature = binBuffer[i + 1] - 1;
                fixed_value = binBuffer[i + 2];
                class = binBuffer[i + 3];
                assigned_node = feature % node_count;

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
                    for (n = 0; n < node_count; n++) {
                        train_s[n][sample_count] = data_placement[n];
                        train_c[n][sample_count] = class;
                    }
                }
                train_f[assigned_node][data_placement[assigned_node]] = feature;
                train_v[assigned_node][data_placement[assigned_node]] = fixed_value;
                feat_deg_recip[feature]++;
                data_placement[assigned_node]++;
            }

            if (chunk_count > 1 && c != chunk_count - 1) {
                if (c + 1 == chunk_count - 1) {
                    free(binBuffer);
                    printf("allocating buffer for final chunk\n");
                    fflush(stdout);
                    binBuffer = (long *) malloc(final_chunk_points * sizeof(long));

                    bytesRead = fread(binBuffer, sizeof(long), final_chunk_points, train_data);
                    if (bytesRead != final_chunk_points) {
                        printf("Error in reading final file chunk\n");
                        exit(1);
                    }
                    chunk_points = final_chunk_points;
                } else {
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
        for (n = 0; n < node_count; n++) {
            train_s[n][sample_count + 1] = data_placement[n]; // add sample id end ptr
            train_s[n][0] = 0;
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
            feature = binBuffer[i + 1] - 1;
            fixed_value = binBuffer[i + 2];
            class = binBuffer[i + 3];
            assigned_node = feature % node_count;

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
                for (n = 0; n < node_count; n++) {
                    train_s[n][sample_count] = data_placement[n];
                    train_c[n][sample_count] = class;
                }
            }
            train_f[assigned_node][data_placement[assigned_node]] = feature;
            train_v[assigned_node][data_placement[assigned_node]] = fixed_value;
            feat_deg_recip[feature]++;
            data_placement[assigned_node]++;
        }
        for (n = 0; n < node_count; n++) {
            train_s[n][sample_count + 1] = data_placement[n]; // add sample id end ptr
            train_s[n][0] = 0;
        }
    }
    fclose(train_data);
    free(binBuffer);

    printf("populate_data() done\n");
    fflush(stdout);
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

void fdeg_copy2nodes(long n){
    for (long i = 0; i <= featureSetSize; i++) {
        REMOTE_ADD(&feat_deg_recip[n][i], feat_deg_recip[0][i]);
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
        //long non_zeros_per_node = ceil(1.10 * ((double) total_train_points / (double) cluster_count));
        mw_replicated_init(&non_zeros_per_node, (long) ceil(1.10 * ((double) total_train_points / (double) cluster_count)));
        printf("non_zeros_per_cluster = %ld\n", non_zeros_per_node);
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

        l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), non_zeros_per_node * sizeof(long));
        for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
            long ***ptr = (long ***) mw_get_nth(&train_f, nlet);
            *ptr = l2d_ptr;
        }

        l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), non_zeros_per_node * sizeof(long));
        for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
            long ***ptr = (long ***) mw_get_nth(&train_v, nlet);
            *ptr = l2d_ptr;
        }

        l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), featureSetSize * sizeof(long));
        for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
            long ***ptr = (long ***) mw_get_nth(&feat_deg_recip, nlet);
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
        //long non_zeros_per_node = ceil(2 * ((double) total_train_points / (double) node_count));
        mw_replicated_init(&non_zeros_per_node, (long) ceil(2 * ((double) total_train_points / (double) node_count)));
        printf("nonzeros_per_node = %ld\n", non_zeros_per_node);
        fflush(stdout);

        l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), (train_sample_count + 1) * sizeof(long));
        for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
            long ***ptr = (long ***) mw_get_nth(&train_s, nlet);
            *ptr = l2d_ptr;
        }

        l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), train_sample_count * sizeof(long));
        for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
            long ***ptr = (long ***) mw_get_nth(&train_c, nlet);
            *ptr = l2d_ptr;
        }

        l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), non_zeros_per_node * sizeof(long));
        for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
            long ***ptr = (long ***) mw_get_nth(&train_f, nlet);
            *ptr = l2d_ptr;
        }

        l2d_ptr = (long **) mw_malloc2d(NUM_NODES(), non_zeros_per_node * sizeof(long));
        for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
            long ***ptr = (long ***) mw_get_nth(&train_v, nlet);
            *ptr = l2d_ptr;
        }

        l1d_ptr = (long *) mw_malloc1dlong(threads_per_cluster);
        mw_replicated_init((long *) &gradients, (long) l1d_ptr);

        l1d_ptr = (long *) mw_malloc1dlong(featureSetSize);
        mw_replicated_init((long *) &model_vec_stripped, (long) l1d_ptr);

        l1d_ptr = (long *) mw_malloc1dlong(featureSetSize);
        mw_replicated_init((long *) &feat_deg_recip_stripped, (long) l1d_ptr);

        l1d_ptr = (long *) mw_malloc1dlong(featureSetSize);
        mw_replicated_init((long *) &node_nnzs, (long) l1d_ptr);
    }

    l1d_ptr = (long *) mw_malloc1dlong((test_sample_count + 1));
    mw_replicated_init((long *) &test_s_stripped, (long) l1d_ptr);

    l1d_ptr = (long *) mw_malloc1dlong(total_test_points);
    mw_replicated_init((long *) &test_f_stripped, (long) l1d_ptr);

    l1d_ptr = (long *) mw_malloc1dlong(total_test_points);
    mw_replicated_init((long *) &test_v_stripped, (long) l1d_ptr);

    l1d_ptr = (long *) mw_malloc1dlong(test_sample_count);
    mw_replicated_init((long *) &test_c_stripped, (long) l1d_ptr);

    if (multi_file_load){
        long*** l3d_ptr = (long ***) mw_malloc2d(NUM_NODES(), cluster_count * sizeof(long*));
        for (long nlet = 0; nlet < NUM_NODES(); ++nlet) {
            long ****ptr = (long ****) mw_get_nth(&data_read_buffer, nlet);
            *ptr = l3d_ptr;
        }
    }

    printf("--- Memmory Allocation Complete ---\n");
    fflush(stdout);

    if (using_clusters){
        for (long n = 0; n < cluster_count; n++) {
            cilk_migrate_hint(&train_s[n]);
            cilk_spawn init_cluster(n);
        }
        cilk_sync;
    } else {
        for (long i = 0; i < featureSetSize; i++){
            model_vec_stripped[i] = 0;
            feat_deg_recip_stripped [i] = 0;
        }
        for (long i = 0; i < threads_per_cluster; i++){
            gradients[i] = 0;
        }
        for (long i = 0; i < node_count; i++){
            node_nnzs[i] = 0;
        }
    }

    printf("--- Memmory Initialization Complete ---\n");
    fflush(stdout);
    MIGRATE(&test_s_stripped[0]);
    volatile uint64_t total_load_time;
    volatile uint64_t start_load_time = CLOCK();
    if (using_clusters) {
        if (multi_file_load){
            for (int n = 0; n < cluster_count; n++) {
                cilk_migrate_hint(&data_read_buffer[0]);
                cilk_spawn node_load_from_n0(n);
            }
            cilk_sync;
        } else {
            populateTrainingData();
        }
    } else {
        if (multi_file_load){
            //for (int n = 0; n < cluster_count; n++) {
            //    cilk_migrate_hint(&data_read_buffer[0]);
                cilk_spawn featpart_node_load_from_n0(0);
            //}
            //cilk_sync;
        } else {
            populateTraining_featurepartitioned();
        }
    }
    total_load_time = CLOCK() - start_load_time;
    printf("Training Data Load Time: %lf\n", (double) total_load_time / clock_rate);
    fflush(stdout);

    double d_temp;
    long l_temp;
    for (long i = 0; i <= featureSetSize; i++) {
        d_temp = 1.0;
        if (using_clusters) {
            d_temp /= (double) feat_deg_recip[0][i];
            d_temp *= 16777216;
            l_temp = (long) d_temp;
            for (int n = 0; n < cluster_count; n++) {
                feat_deg_recip[n][i] = l_temp;
            }
        } else {
            d_temp /= (double) feat_deg_recip_stripped[i];
            d_temp *= 16777216;
            l_temp = (long) d_temp;
            feat_deg_recip_stripped[i] = l_temp;
        }
    }
    printf("F degree dis Done\n");
    fflush(stdout);

    MIGRATE(&test_s_stripped[0]);
    populateTestDataStripped();

    printf("--- Initialization Complete ---\n");
    fflush(stdout);
}