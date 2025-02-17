#define _GNU_SOURCE 1

#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdarg.h>

#define ERRNO_BUF_LEN 1024
#define STRERROR(errnum) strerror_r(abs(errnum), (char[ERRNO_BUF_LEN]){}, ERRNO_BUF_LEN)

#define _cleanup_(f) __attribute__((cleanup(f)))

// This function is copied from the kernel (GPL-2.0-only)
char *kernel_next_arg(char *args, char **param, char **val)
{
        unsigned int i, equals = 0;
        int in_quote = 0, quoted = 0;

        if (*args == '"') {
                args++;
                in_quote = 1;
                quoted = 1;
        }

	for (i = 0; args[i]; i++) {
		if (isspace(args[i]) && !in_quote)
			break;
		if (equals == 0) {
			if (args[i] == '=')
				equals = i;
		}
		if (args[i] == '"')
			in_quote = !in_quote;
	}

	*param = args;
	if (!equals)
		*val = NULL;
	else {
		args[equals] = '\0';
		*val = args + equals + 1;

		if (**val == '"') {
			(*val)++;
			if (args[i-1] == '"')
				args[i-1] = '\0';
		}
	}
	if (quoted && i > 0 && args[i-1] == '"')
		args[i-1] = '\0';

	if (args[i]) {
		args[i] = '\0';
		args += i + 1;
	} else
		args += i;

        while (*args && isspace(*args))
                args++;

	return args;
}

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

static void kmsg(int level, const char *format, ...) __attribute__ ((format (printf, 2, 3)));

static void kmsg(int level, const char *format, ...) {
        va_list args;
        _cleanup_(fclosep) FILE* out = NULL;

        out = fopen("/dev/kmsg", "w");
        if (!out)
                return ;

        fprintf(out, "<%d>", level);

        va_start(args, format);
        vfprintf(out, format, args);
        va_end(args);
}

static char *kernel_cmdline() {
        _cleanup_(freestr) char* buf = NULL;
        _cleanup_(closep) int fd = -EBADF;
        struct stat st;
        ssize_t bytes_read;

        fd = open("/proc/cmdline", O_RDONLY);
        if (fd < 0) {
                return NULL;
        }

        if (fstat(fd, &st) < 0) {
                kmsg(3, "Cannot stat /proc/cmdline: %s\n", STRERROR(errno));
                return NULL;
        }
        buf = malloc(st.st_size + 1);
        if (!buf) {
                kmsg(3, "Cannot allocate buffer\n");
                return NULL;
        }

        bytes_read = read(fd, buf, st.st_size);
        if (bytes_read < 0) {
                kmsg(3, "Cannot read /proc/cmdline: %s\n", STRERROR(errno));
                return NULL;
        }

        buf[bytes_read] = '\0';

        return strdup(buf);
}

int parse_cmdline(int *is_live) {
        _cleanup_(freestr) char* cmdline = NULL;
        char *current, *param, *val;

        cmdline = kernel_cmdline();
        if (!cmdline)
                return 0;

        *is_live = 0;

        current = cmdline;
        while (*current) {
                current = kernel_next_arg(current, &param, &val);
                if (strcmp(param, "root") == 0) {
                        if (strcmp(val, "live:gnomeos") == 0) {
                                *is_live = 1;
                        }
                }
        }

        return 1;
}

int main(int argc, char *argv[]) {
        _cleanup_(freestr) char* path = NULL;
        _cleanup_(fclosep) FILE* file = NULL;
        char *in_initrd_str;
        int in_initrd, is_live;
        int r;

        if (argc != 4) {
                kmsg(3, "Wrong number of parameters\n");
                return 1;
        }

        if (!parse_cmdline(&is_live))
                return 1;

        if (!is_live)
                return 0;

        if (0 > asprintf(&path, "%s/systemd-repart.service", argv[1])) {
                kmsg(3, "Could not format string\n");
                return 1;
        }

        unlink(path);
        r = symlink("/dev/null", path);
        if (r < 0) {
                kmsg(3, "Cannot symlink %s: %s\n", path, STRERROR(errno));
                return 1;
        }

        freestr(&path);

        mkdir("/run/modprobe.d", 0777);
        file = fopen("/run/modprobe.d/brd.conf", "w");
        if (!file) {
                kmsg(3, "Cannot open /run/modprobe.d/brd.conf: %s\n", STRERROR(errno));
                return 1;
        }

        fprintf(file, "options brd rd_size=1048576 rd_nr=1 max_part=5\n");
        fclosep(&file);

        in_initrd_str = getenv("SYSTEMD_IN_INITRD");
        in_initrd = in_initrd_str && (strcmp(in_initrd_str, "") != 0) && (strcmp(in_initrd_str, "0") != 0);

        if (in_initrd) {
                if (0 > asprintf(&path, "%s/initrd-root-device.target.wants", argv[1])) {
                        kmsg(3, "Could not format string\n");
                        return 1;
                }

                mkdir(path, 0777);
                freestr(&path);

                if (0 > asprintf(&path, "%s/initrd-root-device.target.wants/gnomeos-repart-ramdisk.service", argv[1])) {
                        kmsg(3, "Could not format string\n");
                        return 1;
                }

                unlink(path);
                r = symlink("../gnomeos-repart-ramdisk.service", path);
                if (r < 0) {
                        kmsg(3, "Cannot symlink %s: %s\n", path, STRERROR(errno));
                        return 1;
                }

                freestr(&path);

                if (0 > asprintf(&path, "%s/sysroot.mount", argv[1])) {
                        kmsg(3, "Could not format string\n");
                        return 1;
                }

                file = fopen(path, "w");
                if (!file) {
                        kmsg(3, "Cannot open %s: %s\n", path, STRERROR(errno));
                        return 1;
                }
                freestr(&path);

                fprintf(file,
                        "[Unit]\n"
                        "Bindsto=dev-gnomeos\\x2dram\\x2droot.device\n"
                        "After=dev-gnomeos\\x2dram\\x2droot.device\n"
                        "After=gnomeos-repart-ramdisk.service\n"
                        "Before=initrd-root-fs.target\n"
                        "\n"
                        "[Mount]\n"
                        "What=/dev/gnomeos-ram-root\n"
                        "Where=/sysroot\n"
                        "Type=btrfs\n"
                        "Options=rw,nodev,suid,exec,relatime\n");

                fclosep(&file);

                if (0 > asprintf(&path, "%s/initrd-root-fs.target.wants", argv[1])) {
                        kmsg(3, "Could not format string\n");
                        return 1;
                }
                mkdir(path, 0777);
                freestr(&path);

                if (0 > asprintf(&path, "%s/initrd-root-fs.target.wants/sysroot.mount", argv[1])) {
                        kmsg(3, "Could not format string\n");
                        return 1;
                }

                r = symlink("../sysroot.mount", path);
                if (r < 0) {
                        kmsg(3, "Cannot symlink %s: %s\n", path, STRERROR(errno));
                        return 1;
                }

                freestr(&path);
        } else {
                if (0 > asprintf(&path, "%s/run-installer\\x2desp.mount", argv[1])) {
                        kmsg(3, "Could not format string\n");
                        return 1;
                }

                file = fopen(path, "w");
                if (!file) {
                        kmsg(3, "Cannot open %s: %s\n", path, STRERROR(errno));
                        return 1;
                }
                freestr(&path);

                fprintf(file,
                        "[Unit]\n"
                        "Bindsto=dev-gnomeos\\x2dinstaller-esp.device\n"
                        "After=dev-gnomeos\\x2dinstaller-esp.device\n"
                        "\n"
                        "[Mount]\n"
                        "What=/dev/gnomeos-installer/esp\n"
                        "Where=/run/installer-esp\n"
                        "Type=vfat\n"
                        "Options=fmask=0177,dmask=0077,ro,nodev,nosuid,noexec,nosymfollow\n");

                fclosep(&file);

                if (0 > asprintf(&path, "%s/run-installer\\x2desp.automount", argv[1])) {
                        kmsg(3, "Could not format string\n");
                        return 1;
                }

                file = fopen(path, "w");
                if (!file) {
                        kmsg(3, "Cannot open %s: %s\n", path, STRERROR(errno));
                        return 1;
                }
                freestr(&path);

                fprintf(file,
                        "[Automount]\n"
                        "Where=/run/installer-esp\n"
                        "TimeoutIdleSec=120\n");

                fclosep(&file);


                if (0 > asprintf(&path, "%s/local-fs.target.wants", argv[1])) {
                        kmsg(3, "Could not format string\n");
                        return 1;
                }
                mkdir(path, 0777);
                freestr(&path);

                if (0 > asprintf(&path, "%s/local-fs.target.wants/run-installer\\x2desp.automount", argv[1])) {
                        kmsg(3, "Could not format string\n");
                        return 1;
                }

                r = symlink("../run-installer\\x2desp.automount", path);
                if (r < 0) {
                        kmsg(3, "Cannot symlink %s: %s\n", path, STRERROR(errno));
                        return 1;
                }

                freestr(&path);
        }

        return 0;
}
