#!/bin/bash

# Block until one or more jobs on $OPENQA_HOST completes.
#
# Write a status to stdout on completion: 1 if any job fails, 0 if all jobs pass.

set -eu

job_ids=$@

job_check() {
    job_id="$1"
    openqa-cli api --apikey $OPENQA_API_KEY \
        --apisecret $OPENQA_API_KEY \
        --host $OPENQA_HOST \
        jobs/${job_id}
}

failed=0

for job_id in $job_ids; do
    state=$(job_check ${job_id} | jq .job.state)

    # All possible job states are listed here:
    # https://github.com/os-autoinst/openQA/blob/master/lib/OpenQA/Jobs/Constants.pm
    while [ "$state" != "\"done\"" ] && [ "$state" != "\"cancelled\"" ]; do
        sleep 10;
        state=$(job_check ${job_id} | jq .job.state);
    done
    echo >&2 "Job ${job_id} finished"

    result=$(job_check ${job_id} | tee --append openqa.log | jq .job.result)
    if [ "$result" == "\"passed\"" ]; then
      echo >&2 "Test job ${job_id} *PASSED*"
    elif [ "$result" == "\"user_cancelled\"" ]; then
      echo >&2 "Test job ${job_id} *CANCELLED*"
      failed=1
    else
      echo >&2 "Test job ${job_id} *FAILED*"
      failed=1
    fi
done

echo $failed
