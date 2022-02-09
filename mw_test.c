// RUN: emu-cc %s -lmemoryweb -fcilkplus -o %t.mwx && check --simopts="--total_nodes 8" %t.mwx --name=mw_fread_mw_fwrite
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include "memoryweb/memoryweb.h"
//#include "pmanip.h"
#include "cilk.h"
#include "memoryweb/io.h"

static long nodelet0;

// NOTE: must be marked volatile to avoid infinite loop of TPCx: JMP TPCx in
// while (barrier != GO);
//static replicated long volatile barrier = 0;


static void __do_open_write_read_memcmp(void *local_ptr, uint64_t nlet,char *fname, char *mode, uint64_t buf_sz)
{
    FILE *fp = NULL;
    size_t wrote = 0, read = 0;
    //TODO: uint64_t actual_nlet = NODE_ID()
    int matched, ret, index;
    void *to_disk_buf = NULL, *from_disk_buf = NULL;
    void *to_disk = NULL, *from_disk = NULL;
    uint64_t ticks_start, ticks_stop;

    //printf("local_ptr = %p.\n", local_ptr);


    MIGRATE(local_ptr); // Migrate to node

    fp = mw_fopen(fname, mode, local_ptr);
    if (!fp) {
        fprintf(stderr, "mw_fopen returned %p: %m.\n", fp);
        fflush(NULL);
        exit(0 << 16 | EXIT_FAILURE);
    }

    printf("nlet%lu, fp = %p.\n", nlet, fp); fflush(stdout);
    long node = nlet;
    long node1 = gc_addr_abs_node_num((uint64_t)fp);
    if ( node != node1 ) {
        fprintf(stderr, "%d: fp=%p supposed to be on nlet%lu but is on nlet%lu.\n", __LINE__, fp, node, node1);
        fflush(NULL);
        exit(1 << 16 | EXIT_FAILURE);
    }

    // Write contents of memory to file
    to_disk_buf = mw_localmalloc(1 * buf_sz + 0x000, local_ptr);
    //to_disk_buf = malloc(2 * buf_sz + 0x800);
    if (!to_disk_buf) {
        fprintf(stderr, "mw_localmalloc/malloc returned %p.\n", to_disk_buf);
        fflush(NULL);
        //if (!to_disk_buf) {
        exit(2 << 16 | EXIT_FAILURE);
    }
    //to_disk = (void *) (((uint64_t) to_disk_buf & ~0xff) + ((((uint64_t) to_disk_buf & 0xff) != 0x0) << 8) + 0x000);
    to_disk = to_disk_buf;

    for (int i = 0; i < buf_sz; i++) {
        ((uint8_t *) to_disk)[i] = i + 1 + nlet;
    }

#if 0
    if (nlet != NODE_ID()) {
        fprintf(stderr, "%d: on nlet%lu but supposed to be on nlet%lu.\n",
                __LINE__, NODE_ID(), nlet);
        exit(EXIT_FAILURE);
    }
#endif

    ticks_start = CLOCK();
    wrote = mw_fwrite(to_disk, 1, buf_sz, fp);
    //wrote = fwrite(to_disk, 1, buf_sz, fp);
    ticks_stop = CLOCK();
    if (wrote != buf_sz) {
        fprintf(stderr, "mw_fwrite/fwrite returned %lu but buf_sz = %lu.\n", wrote,buf_sz);
        fflush(NULL);
        exit(3 << 16 | EXIT_FAILURE);
    }
    printf("nlet: %lu, mw_fwrite: %lu ticks.\n", nlet, ticks_stop - ticks_start);
    MIGRATE(local_ptr);

    rewind(fp);

    from_disk_buf = mw_localmalloc(1 * buf_sz + 0x000, local_ptr);
    //from_disk_buf = malloc(2 * buf_sz + 0x800);
    if (!from_disk_buf) {
        fprintf(stderr, "mw_localmalloc/malloc returned %p.\n", from_disk_buf);
        fflush(NULL);
        //if (!from_disk_buf) {
        exit(4 << 16 | EXIT_FAILURE);
    }
    //from_disk = (void *) (((uint64_t) from_disk_buf & ~0xff) + ((((uint64_t) from_disk_buf & 0xFF) != 0x0) << 8) + 0x000);
    from_disk = from_disk_buf;

#if 0
    if (nlet != NODE_ID()) {
        fprintf(stderr, "%d: on nlet%lu but supposed to be on nlet%lu.\n",
                __LINE__, NODE_ID(), nlet);
        exit(EXIT_FAILURE);
    }
#endif

    ticks_start = CLOCK();
    read = mw_fread(from_disk, 1, buf_sz, fp);
    //read = fread(from_disk, 1, buf_sz, fp);
    ticks_stop = CLOCK();
    if (read != buf_sz) {
        fprintf(stderr, "mw_fread returned %lu but buf_sz = %lu.\n", read,buf_sz);
        fflush(NULL);
        exit(5 << 16 | EXIT_FAILURE);
    }
    printf("nlet: %lu, mw_fread: %lu ticks.\n", nlet, ticks_stop - ticks_start);
    MIGRATE(local_ptr);

    matched = memcmp(to_disk, from_disk, buf_sz);
    if (matched != 0) {
        index = abs(matched);
        fprintf(stderr, "memcmp returned matched = %d.\n", matched);
        fprintf(stderr, "to_disk pointer=%p [%d]=%p, from_disk pointer=%p, [%d]=%p\n", to_disk,   index, ((uint8_t *) to_disk + index),
                from_disk, index, ((uint8_t *) from_disk + index));
        fprintf(stderr, "to_disk[%d]=0x%x, from_disk[%d]=0x%x\n", index, *((uint8_t *) to_disk + index), index, *((uint8_t *) from_disk + index));
        for (int i = 0; i < buf_sz; i++) {
            if (*((uint8_t *) to_disk + i) != *((uint8_t *) from_disk + i)) {
                fprintf(stderr, "Byte compare found mismatch at = %d to_disk[%d](%p)=0x%x from_disk[%d](%p)=0x%x.\n",
                        i, i, ((uint8_t *) to_disk + i), *((uint8_t *) to_disk + i),
                        i, ((uint8_t *) from_disk + i), *((uint8_t *) from_disk + i));
            }
        }
        fflush(NULL);
        //if (matched != 0) {
        exit(6 << 16 | EXIT_FAILURE);
    }

    // Clear the file
    for (int i = 0; i < buf_sz / sizeof(uint64_t); i++) {
        ((uint64_t *) to_disk)[i] = 0;
    }
    wrote = mw_fwrite(to_disk, 1, buf_sz, fp);
    if (wrote != buf_sz) {
        fprintf(stderr, "mw_fwrite returned %lu but buf_sz = %lu.\n", wrote,buf_sz);
        fflush(NULL);
        exit(7 << 16 | EXIT_FAILURE);
    }

    mw_localfree(to_disk_buf);
    mw_localfree(from_disk_buf);
    //free(to_disk_buf);
    //free(from_disk_buf);

    ret = mw_fclose(fp);
    if (ret == EOF) {
        fprintf(stderr, "mw_fclose returned EOF=%d: %m.\n", ret);
        fflush(NULL);
        exit(8 << 16 | EXIT_FAILURE);
    }

#if 0
    if (nlet != NODE_ID()) {
        fprintf(stderr, "%d: on nlet%lu but supposed to be on nlet%lu.\n",
                __LINE__, NODE_ID(), nlet);
        exit(EXIT_FAILURE);
    }
#endif
}

int main(int argc, char **argv)
{
    uint64_t bpn = BYTES_PER_NODE();
    uint64_t nlets = NUM_NODES();
    long *local_ptr = (long *) ((uint64_t) &nodelet0);
    uint64_t nlet = 0;
    char buf[1024] = {0};
    char **fnames = malloc(nlets * sizeof(char *));
    char **repl_fnames = malloc(nlets * sizeof(char *));
    char **repl_mode = malloc(nlets * sizeof(char *));
    char *mode = "w+";
    uint64_t sz;

    if (argc < 2)
        sz = 2 * 1024 * 1024;
    else
        sz = atoi(argv[1]);

    for (nlet = 0; nlet < nlets; nlet++) {
        // Add .nlet# to string buffer
        snprintf(buf, 1024, ".nlet%lu", nlet);
        fnames[nlet] = strdup(buf); // Create duplicate string
        local_ptr = (long *) ((uint64_t) &nodelet0 + (bpn * nlet));

        cilk_spawn __do_open_write_read_memcmp(local_ptr, nlet, fnames[nlet],mode, sz);
    }
    cilk_sync;

    printf("Local done.\n");

    for (nlet = 0; nlet < nlets; nlet++) {
        local_ptr = (long *) ((uint64_t) &nodelet0 + (bpn * nlet));
        repl_fnames[nlet] = mw_localmalloc(sizeof(fnames[nlet]) + 1, local_ptr);
        repl_mode[nlet] = mw_localmalloc(sizeof(mode) + 1, local_ptr);
        memcpy(repl_fnames[nlet], fnames[nlet], sizeof(fnames[nlet]) + 1);
        memcpy(repl_mode[nlet], mode, sizeof(mode) + 1);

        cilk_spawn __do_open_write_read_memcmp(local_ptr, nlet,repl_fnames[nlet],repl_mode[nlet],sz);
    }
    cilk_sync;

    printf("Replicated done.\n");

    for (nlet = 0; nlet < nlets; nlet++) {
        char *path = repl_fnames[nlet];
        MIGRATE(path);
        int ret = unlink(path);
        if (ret == -1) {
            fprintf(stderr, "unlink: %s -lmemoryweb: %m.\n", repl_fnames[nlet]);
            exit(nlet << 32 | 1 << 24 | EXIT_FAILURE);
        }
        mw_localfree(repl_fnames[nlet]);
        mw_localfree(repl_mode[nlet]);
        free(fnames[nlet]);
    }
    free(fnames);
    free(repl_fnames);
    free(repl_mode);

    return 0;
}
