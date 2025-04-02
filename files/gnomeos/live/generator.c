#define _GNU_SOURCE 1

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdarg.h>
#include <stdbool.h>

#include "kernel-cmdline.h"
#include "kmsg.h"

#define ERRNO_BUF_LEN 1024
#define STRERROR(errnum) strerror_r(abs(errnum), (char[ERRNO_BUF_LEN]){}, ERRNO_BUF_LEN)

#define _cleanup_(f) __attribute__((cleanup(f)))

static void freestr(char **p) {
        if (*p) {
                free(*p);
                *p = NULL;
        }
}

static void fclosep(FILE **p) {
        if (*p) {
                fclose(*p);
                *p = NULL;
        }
}

static bool enable_unit(const char *generator_path, const char *from, const char *unit, const char *unit_path) {
        _cleanup_(freestr) char* dir_path = NULL;
        _cleanup_(freestr) char* path = NULL;
        _cleanup_(freestr) char* target_path = NULL;
        int r;

        if (0 > asprintf(&dir_path, "%s/%s", generator_path, from)) {
                kmsg(3, "Could not format string\n");
                return false;
        }
        mkdir(dir_path, 0777);

        if (0 > asprintf(&path, "%s/%s/%s", generator_path, from, unit)) {
                kmsg(3, "Could not format string\n");
                return false;
        }

        if (0 > asprintf(&target_path, "%s/%s", unit_path, unit)) {
                kmsg(3, "Could not format string\n");
                return false;
        }

        r = symlink(target_path, path);
        if (r < 0) {
                kmsg(3, "Cannot symlink %s: %s\n", path, STRERROR(errno));
                return false;
        }

        return true;
}

int main(int argc, char *argv[]) {
        _cleanup_(fclosep) FILE* file = NULL;
        char *in_initrd_str;
        int in_initrd;
        bool is_live;

        if (argc != 4) {
                kmsg(3, "Wrong number of parameters\n");
                return 1;
        }

        if (!parse_cmdline(&is_live))
                return 1;

        if (!is_live)
                return 0;

        in_initrd_str = getenv("SYSTEMD_IN_INITRD");
        in_initrd = in_initrd_str && (strcmp(in_initrd_str, "") != 0) && (strcmp(in_initrd_str, "0") != 0);

        if (in_initrd) {
                mkdir("/run/systemd/zram-generator.conf.d", 0777);
                file = fopen("/run/systemd/zram-generator.conf.d/zram1.conf", "w");
                fprintf(file, "[zram1]\nmount-point=/sysroot\nfs-type=btrfs\n");
                fclosep(&file);

                if (!enable_unit(argv[1], "initrd-root-device.target.wants", "systemd-zram-setup@zram1.service", "/usr/lib/systemd/system"))
                        return 1;

                if (!enable_unit(argv[1], "initrd-root-fs.target.wants", "sysroot.mount", ".."))
                        return 1;

        } else {
                mkdir("/run/systemd/zram-generator.conf.d", 0777);
                file = fopen("/run/systemd/zram-generator.conf.d/zram1.conf", "w");
                fprintf(file, "[zram1]\nmount-point=/\nfs-type=btrfs\n");
                fclosep(&file);
        }

        return 0;
}
