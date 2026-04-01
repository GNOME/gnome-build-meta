#ifndef KERNEL_CMDLINE_H
# define KERNEL_CMDLINE_H

#include <stdbool.h>

bool parse_cmdline(bool *is_live, bool *is_safe, bool *is_nvidia);

#endif
