#define _GNU_SOURCE 1

#include "kernel-cmdline.h"

#include "kmsg.h"

#include <ctype.h>
#include <errno.h>
#include <fcntl.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <unistd.h>

#define ERRNO_BUF_LEN 1024
#define STRERROR(errnum) strerror_r(abs(errnum), (char[ERRNO_BUF_LEN]){}, ERRNO_BUF_LEN)

#define _cleanup_(f) __attribute__((cleanup(f)))

static void freestr(char **p) {
        if (*p) {
                free(*p);
                *p = NULL;
        }
}

static void closep(int *p) {
        if (*p >= 0) {
                close(*p);
                *p = -EBADF;
        }
}

// This function is copied from the kernel (GPL-2.0-only)
static char *kernel_next_arg(char *args, char **param, char **val)
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

bool parse_cmdline(bool *is_live) {
        _cleanup_(freestr) char* cmdline = NULL;
        char *current, *param, *val;

        cmdline = kernel_cmdline();
        if (!cmdline)
                return false;

        *is_live = false;

        current = cmdline;
        while (*current) {
                current = kernel_next_arg(current, &param, &val);
                if (strcmp(param, "root") == 0) {
                        if (strcmp(val, "live:gnomeos") == 0) {
                                *is_live = true;
                        }
                }
        }

        return true;
}
