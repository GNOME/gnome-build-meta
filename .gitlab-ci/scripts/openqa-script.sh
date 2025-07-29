#! /bin/bash

set -eu
set -o pipefail

git clone "$OPENQA_UTILS_GIT" --branch "$OPENQA_UTILS_BRANCH" --recurse-submodules ./tests/openqa/utils
echo "Checked out $OPENQA_UTILS_GIT commit $(git -C ./tests/openqa/utils rev-parse HEAD)"

rm --recursive --verbose /etc/openqa/*
cat >/etc/openqa/client.conf <<EOF
[openqa.gnome.org]
key = $OPENQA_API_KEY
secret = $OPENQA_API_SECRET
EOF

# Kludge so we can use `/tests/config/smbios.txt` to locate the smbios file.
ln -s "$(pwd)/tests/openqa" /tests
worker_class="qemu_x86_64-${CI_JOB_ID}"
tests/openqa/utils/setup_worker.sh "${worker_class}"
/run_openqa_worker.sh &> worker.log &

echo "Starting jobs: "
echo
version="master"
casedir="$(pwd)/tests/openqa"
for testsuite in $TESTSUITES; do
    tests/openqa/utils/start_job.sh "${worker_class}" "${version}" "${casedir}" "${testsuite}" > /tmp/job_id
    echo " * ${testsuite}: $OPENQA_HOST/tests/$(cat /tmp/job_id)"
    cat /tmp/job_id >> /tmp/all_job_ids
done

# There are multiple ids and we want them to be split instead
# of being passed as strings
# shellcheck disable=SC2046
tests/openqa/utils/wait_for_job.sh $(cat /tmp/all_job_ids) > /tmp/exit_code
exit "$(cat /tmp/exit_code)"
