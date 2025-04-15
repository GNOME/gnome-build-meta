#define _GNU_SOURCE 1

#include "kernel-cmdline.h"

#include <stdio.h>
#include <stdlib.h>

int main() {
        const char* original;
        bool is_live;

        if (!parse_cmdline(&is_live))
                return 1;

        if (!is_live)
                return 0;

        /*
         * The point her is the add a data dir only in live mode so we can have
         * for example .desktop file for the installer available only in live mode.
         */
        original = getenv("XDG_DATA_DIRS");
        if (original)
                printf("XDG_DATA_DIRS=%s:/usr/share/gnomeos-live/data\n", original);
        else
                printf("XDG_DATA_DIRS=/usr/local/share/:/usr/share/:/usr/share/gnomeos-live/data\n");

        original = getenv("XDG_CONFIG_DIRS");
        if (original)
                printf("XDG_CONFIG_DIRS=%s:/usr/share/gnomeos-live/config\n", original);
        else
                printf("XDG_CONFIG_DIRS=/etc/xdg:/usr/share/gnomeos-live/config\n");

        return 0;
}
