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

static void closep(int *p) {
        if (*p >= 0) {
                close(*p);
                *p = -EBADF;
        }
}

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

static bool mask_unit(const char *generator_path, const char* name) {
        _cleanup_(freestr) char* path = NULL;
        int r;

        if (0 > asprintf(&path, "%s/%s", generator_path, name)) {
                kmsg(3, "Could not format string\n");
                return false;
        }

        r = symlink("/dev/null", path);
        if (r < 0) {
                kmsg(3, "Cannot symlink %s: %s\n", path, STRERROR(errno));
                return false;
        }

        return true;
}

static bool generate_unit(const char *generator_path, const char* name, const char *format, ...) __attribute__ ((format (printf, 3, 4)));

static bool generate_unit(const char *generator_path, const char* name, const char *format, ...) {
        va_list args;
        _cleanup_(freestr) char* path = NULL;
        _cleanup_(fclosep) FILE* file = NULL;

        if (0 > asprintf(&path, "%s/%s", generator_path, name)) {
                kmsg(3, "Could not format string\n");
                return false;
        }

        file = fopen(path, "w");
        if (!file) {
                kmsg(3, "Cannot open %s: %s\n", path, STRERROR(errno));
                return false;
        }

        va_start(args, format);
        vfprintf(file, format, args);
        va_end(args);

        return true;
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

static bool mark_live() {
        /*
         * This is a marker we can easily check in polkit rules.
         * See files/gnomeos/proto-installer/org.gnome.Installer1.rules
         */
        _cleanup_(closep) int fd = -EBADF;
        mkdir("/run/gnomeos", 0777);
        fd = open("/run/gnomeos/is-live", O_CREAT|O_WRONLY|O_TRUNC, 0666);
        if (fd < 0) {
                kmsg(3, "Cannot create /run/gnomeos/is-live: %s\n", STRERROR(errno));
                return false;
        }

        return true;
}

static bool handle_live(const char *generator_path, bool in_initrd) {
        _cleanup_(fclosep) FILE* file = NULL;
        _cleanup_(fclosep) FILE* file2 = NULL;

        if (in_initrd) {
                mkdir("/run/systemd/zram-generator.conf.d", 0777);
                file = fopen("/run/systemd/zram-generator.conf.d/zram1.conf", "w");
                fprintf(file, "[zram1]\nmount-point=/sysroot\nfs-type=btrfs\n");
                fclosep(&file);

                if (!enable_unit(generator_path, "initrd-root-device.target.wants", "systemd-zram-setup@zram1.service", "/usr/lib/systemd/system"))
                        return false;

                if (!enable_unit(generator_path, "initrd-root-fs.target.wants", "sysroot.mount", ".."))
                        return false;

        } else {
                mkdir("/run/systemd/zram-generator.conf.d", 0777);
                file = fopen("/run/systemd/zram-generator.conf.d/zram1.conf", "w");
                if (!file) {
                        kmsg(3, "Cannot write /run/systemd/zram-generator.conf.d/zram1.conf: %s\n", STRERROR(errno));
                        return false;
                }
                fprintf(file, "[zram1]\nmount-point=/\nfs-type=btrfs\n");
                fclosep(&file);

                mkdir("run/systemd/homed.conf.d", 0777);
                file2 = fopen("/run/systemd/homed.conf.d/00-force-subvolume.conf", "w");
                fprintf(file2, "[Home]\nDefaultStorage=subvolume\n");
                fclosep(&file2);

                if (!mark_live())
                        return false;

                if (!generate_unit(generator_path, "var-lib-gnomeos-installer\\x2desp.mount",
                                   "[Unit]\n"
                                   "BindsTo=dev-gnomeos\\x2dinstaller-esp.device\n"
                                   "After=dev-gnomeos\\x2dinstaller-esp.device\n"
                                   "\n"
                                   "[Mount]\n"
                                   "What=/dev/gnomeos-installer/esp\n"
                                   "Where=/var/lib/gnomeos/installer-esp\n"
                                   "Type=vfat\n"
                                   "Options=fmask=0177,dmask=0077,ro,nodev,nosuid,noexec,nosymfollow\n"))
                        return false;

                if (!generate_unit(generator_path, "var-lib-gnomeos-installer\\x2desp.automount",
                                   "[Automount]\n"
                                   "Where=/var/lib/gnomeos/installer-esp\n"
                                   "TimeoutIdleSec=120\n"))
                        return false;


                if (!enable_unit(generator_path, "local-fs.target.wants", "var-lib-gnomeos-installer\\x2desp.automount", ".."))
                        return false;

                /* This is needed for the installer. We just prepare it, so it is loaded. But we not enable it. */
                if (!generate_unit(generator_path, "systemd-cryptsetup@root.service",
                                   "[Unit]\n"
                                   "Description=Cryptography Setup for %%I\n"
                                   "\n"
                                   "DefaultDependencies=no\n"
                                   "After=cryptsetup-pre.target systemd-udevd-kernel.socket systemd-tpm2-setup-early.service\n"
                                   "Before=blockdev@dev-mapper-%%i.target\n"
                                   "Wants=blockdev@dev-mapper-%%i.target\n"
                                   "IgnoreOnIsolate=true\n"
                                   "Before=umount.target cryptsetup.target\n"
                                   "Conflicts=umount.target\n"
                                   "Wants=dev-gnomeos\\x2dpab\\x2dinstall-root\\x2dluks.device\n" /* BindsTo? */
                                   "After=dev-gnomeos\\x2dpab\\x2dinstall-root\\x2dluks.device\n"
                                   "\n"
                                   "[Service]\n"
                                   "Type=oneshot\n"
                                   "RemainAfterExit=yes\n"
                                   "TimeoutSec=infinity\n"
                                   "KeyringMode=shared\n"
                                   "OOMScoreAdjust=500\n"
                                   "ExecStart=/usr/bin/systemd-cryptsetup attach root /dev/gnomeos-pab-install/root-luks\n"
                                   "ExecStop=/usr/bin/systemd-cryptsetup detach root\n"))
                        return false;

                /* This is needed for the installer. We just prepare it, so it is loaded. But we not enable it. */
                if (!generate_unit(generator_path, "efi.mount",
                                   "[Unit]\n"
                                   "BindsTo=dev-gnomeos\\x2dpab\\x2dinstall-esp.device\n"
                                   "After=dev-gnomeos\\x2dpab\\x2dinstall-esp.device\n"
                                   "\n"
                                   "[Mount]\n"
                                   "What=/dev/gnomeos-pab-install/esp\n"
                                   "Where=/efi\n"
                                   "Type=vfat\n"
                                   "Options=fmask=0177,dmask=0077,rw,nodev,nosuid,noexec,nosymfollow\n"))
                        return false;

                /* This is needed for the installer. We just prepare it, so it is loaded. But we not enable it. */
                if (!generate_unit(generator_path, "efi.automount",
                                   "[Automount]\n"
                                   "Where=/efi\n"
                                   "TimeoutIdleSec=120\n"))
                        return false;
        }

        return true;
}

static bool handle_safe(const char *generator_path, bool in_initrd) {
        if (in_initrd) {
                if (!mask_unit(generator_path, "systemd-sysext-initrd.service"))
                        return false;
        } else {
                if (!mask_unit(generator_path, "systemd-sysext.service"))
                        return false;
        }

        return true;
}

static bool handle_nvidia(const char *generator_path) {
        _cleanup_(fclosep) FILE* file = NULL;

        mkdir("/run/modprobe.d", 0777);
        file = fopen("/run/modprobe.d/gnomeos-nvidia.conf", "w");
        if (!file) {
                kmsg(3, "Cannot write /run/modprobe.d/gnomeos-nvidia.conf: %s\n", STRERROR(errno));
                return false;
        }
        fprintf(file, "blacklist nouveau\noptions nvidia_drm modeset=1 NVreg_PreserveVideoMemoryAllocations=1\n");
        fclosep(&file);

        return true;
}

int main(int argc, char *argv[]) {
        char *in_initrd_str;
        int in_initrd;
        bool is_live, is_safe, is_nvidia;

        if (argc != 4) {
                kmsg(3, "Wrong number of parameters\n");
                return 1;
        }

        if (!parse_cmdline(&is_live, &is_safe, &is_nvidia))
                return 1;

        in_initrd_str = getenv("SYSTEMD_IN_INITRD");
        in_initrd = in_initrd_str && (strcmp(in_initrd_str, "") != 0) && (strcmp(in_initrd_str, "0") != 0);

        if (is_live)
                if (!handle_live(argv[1], in_initrd))
                        return 1;

        if (is_safe)
                if (!handle_safe(argv[1], in_initrd))
                        return 1;

        if (!is_safe && is_nvidia)
                if (!handle_nvidia(argv[1]))
                                return 1;

        return 0;
}
