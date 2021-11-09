#!/bin/bash

# Block until a job on $OPENQA_HOST completes.
#
# Write a status to stdout on completion: 1 if job fails, 0 if job passes.

set -eu

job_id=$1

job_check() {
    openqa-cli api --apikey $OPENQA_API_KEY \
        --apisecret $OPENQA_API_KEY \
        --host $OPENQA_HOST \
        jobs/${job_id}
}

state=$(job_check | jq .job.state)
while [ "$state" != "\"done\"" ]; do sleep 10 && state=$(job_check | jq .job.state); done
echo >&2 "Tests finished"

result=$(job_check | tee --append openqa.log | jq .job.result)
if [ "$result" != "\"passed\"" ]; then
  echo >&2 "Test job ${job_id} *FAILED*"
  echo 1
else
  echo >&2 "Test job ${job_id} *PASSED*"
  echo 0
fi
