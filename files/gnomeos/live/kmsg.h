#ifndef KMSG_H
# define KMSG_H

void kmsg(int level, const char *format, ...) __attribute__ ((format (printf, 2, 3)));

#endif
