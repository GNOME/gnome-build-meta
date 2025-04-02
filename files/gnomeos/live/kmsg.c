#define _GNU_SOURCE 1

#include "kmsg.h"

#include <stdio.h>
#include <stdarg.h>

#define _cleanup_(f) __attribute__((cleanup(f)))

static void fclosep(FILE **p) {
        if (*p) {
                fclose(*p);
                *p = NULL;
        }
}

void kmsg(int level, const char *format, ...) {
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
