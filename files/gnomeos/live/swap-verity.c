#define _GNU_SOURCE 1

#include <stdio.h>
#include <errno.h>
#include <libdevmapper.h>
#include <sys/sysmacros.h>
#include <stdbool.h>

#define ERRNO_BUF_LEN 1024
#define STRERROR(errnum) strerror_r(abs(errnum), (char[ERRNO_BUF_LEN]){}, ERRNO_BUF_LEN)

#define _cleanup_(f) __attribute__((cleanup(f)))

static void cleanup_dm_task(struct dm_task **task) {
        dm_task_destroy(*task);
        *task = NULL;
}

static void freestr(char **p) {
        if (*p) {
                free(*p);
                *p = NULL;
        }
}

static bool resume(const char *name) {
        _cleanup_(cleanup_dm_task) struct dm_task *task = NULL;

        task = dm_task_create(DM_DEVICE_RESUME);
        if (!task) {
                fprintf(stderr, "Could not create resume task\n");
                return false;
        }
        if (!dm_task_set_name(task, name)) {
                fprintf(stderr, "Could not set name in resume task\n");
                return false;
        }
        if (!dm_task_run(task)) {
                fprintf(stderr, "Could not resume\n");
                return false;
        }
        return true;
}

static char *get_params(const char *name, uint64_t *start, uint64_t *size) {
        _cleanup_(cleanup_dm_task) struct dm_task *task = NULL;
        struct dm_info info;
        char *params = NULL;
        char *ret_copy;
        void *next = NULL;
        char *target_type = NULL;

        task = dm_task_create(DM_DEVICE_TABLE);
        if (!task) {
                fprintf(stderr, "Could not create table task\n");
                return NULL;
        }
        if (!dm_task_set_name(task, name)) {
                fprintf(stderr, "Could not set name in table task\n");
                return NULL;
        }
        if (!dm_task_run(task)) {
                fprintf(stderr, "Could not get the table\n");
                return NULL;
        }

        if (!dm_task_get_info(task, &info)) {
                fprintf(stderr, "Could not get info\n");
                return NULL;
        }

        next = dm_get_next_target(task, next, start, size, &target_type, &params);
        if (!target_type || (strcmp(target_type, "verity") != 0) || next) {
                fprintf(stderr, "Invalid target type\n");
                return NULL;
        }

        ret_copy = strdup(params);
        if (!ret_copy)
                fprintf(stderr, "Could copy table\n");
        return ret_copy;
}

static bool reload_params(const char *name, const char *params, uint64_t start, uint64_t size) {
        _cleanup_(cleanup_dm_task) struct dm_task *task = NULL;

        task = dm_task_create(DM_DEVICE_RELOAD);
        if (!task) {
                fprintf(stderr, "Could not create reload task\n");
                return false;
        }
        if (!dm_task_set_name(task, name)) {
                fprintf(stderr, "Could set name in reload task\n");
                return false;
        }
        if (!dm_task_set_ro(task)) {
                fprintf(stderr, "Could set ro in reload task\n");
                return false;
        }
        if (!dm_task_add_target(task, start, size, "verity", params)) {
                fprintf(stderr, "Could add target\n");
                return false;
        }
        if (!dm_task_run(task)) {
                fprintf(stderr, "Could not reload\n");
                return false;
        }

        return true;
}

static char *device_name(const char *node_path) {
        char * ret;
        struct stat st;
        int r;

        r = stat(node_path, &st);
        if (r < 0) {
                fprintf(stderr, "Cannot stat %s: %s\n", node_path, STRERROR(errno));
                return NULL;
        }

        ret = NULL;
        if (0 > asprintf(&ret, "%u:%u", major(st.st_rdev), minor(st.st_rdev))) {
                if (ret)
                        free(ret);
                fprintf(stderr, "Could not format the device string for %s\n", node_path);
                return NULL;
        }

        return ret;
}

static char *update_params(const char *src_params, const char *new_dev, const char *new_hash_dev) {
        _cleanup_(freestr) char *params = NULL;
        _cleanup_(freestr) char *new_dev_formatted = NULL;
        _cleanup_(freestr) char *new_hash_dev_formatted = NULL;
        char *ret;

        params = strdup(src_params);
        if (params == NULL) {
                fprintf(stderr, "Cannot copy params\n");
                return NULL;
        }
        const char* params_comps[10];
        size_t index = 0;
        params_comps[index++] = params;
        for (size_t i = 0; params[i] && index < 10; ++i) {
                if (params[i] == ' ') {
                        params_comps[index++] = params + i + 1;
                        params[i] = '\0';
                }
        }

        if (index != 10) {
                fprintf(stderr, "Not enough parameters\n");
                return NULL;
        }

        new_dev_formatted = device_name(new_dev);
        if (!new_dev_formatted)
                return NULL;
        new_hash_dev_formatted = device_name(new_hash_dev);
        if (!new_hash_dev_formatted)
                return NULL;

        ret = NULL;
        if (0 > asprintf(&ret, "%s %s %s %s %s %s %s %s %s %s",
                         params_comps[0],
                         new_dev_formatted,
                         new_hash_dev_formatted,
                         params_comps[3],
                         params_comps[4],
                         params_comps[5],
                         params_comps[6],
                         params_comps[7],
                         params_comps[8],
                         params_comps[9])) {
                if (ret)
                        free(ret);
                fprintf(stderr, "Could not format the new params\n");
                return NULL;
        }
        return ret;
}

static bool swap_devices(const char *name, const char *new_dev, const char *new_hash_dev) {
        _cleanup_(freestr) char* src_params = NULL;
        _cleanup_(freestr) char* new_params = NULL;
        uint64_t start, size;

        src_params = get_params(name, &start, &size);
        if (src_params == NULL)
                return false;
        new_params = update_params(src_params, new_dev, new_hash_dev);
        if (!reload_params(name, new_params, start, size))
                return false;
        if (!resume(name))
                return false;
        return true;
}

int main(int argc, char *argv[]) {
        if (argc != 4) {
                fprintf(stderr, "Expected 3 arguments\n");
                return 1;
        }
        if (!swap_devices(argv[1], argv[2], argv[3])) {
                return 1;
        }
        return 0;
}
