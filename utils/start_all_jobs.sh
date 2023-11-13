#!/bin/bash

# Start all test jobs on $OPENQA_HOST.
#
# On success, write the job IDs returned by server to stdout, one per line.
#
# Positional arguments:
#
#  1. `WORKER_CLASS`: controls which test runner will be used
#  2. `VERSION`: just pass 'master'
#  3. `CASEDIR`: path on the test runner where the openqa-tests.git repo is cloned
#
# Test suites are configured in the file `config/scenario_definitions.yaml`.

set -eu

script_dir="$(dirname $0)"

worker_class="$1"
version="$2"
casedir="$3"

echo "Calling 'POST isos' endpoint to start jobs." >> openqa.log

openqa-cli api --apikey $OPENQA_API_KEY --apisecret $OPENQA_API_SECRET \
  --host $OPENQA_HOST \
  -X POST isos \
  --param-file SCENARIO_DEFINITIONS_YAML="$casedir/config/scenario_definitions.yaml" \
  ARCH="x86_64" \
  CASEDIR="$casedir" \
  DISTRI="gnomeos" \
  FLAVOR="iso" \
  GITLAB_CI_JOB_URL="${CI_JOB_URL:-}" \
  NEEDLES_DIR=$OPENQA_NEEDLES_GIT#$OPENQA_NEEDLES_BRANCH \
  VERSION=$version \
  WORKER_CLASS=$worker_class \
  | tee --append openqa.log > isos.response.json

response=$(cat isos.response.json)

if [ -z "${response}" ]; then
    echo >&2 "ERROR: No jobs were started by openQA server."
    exit 1
fi

# Echo job ids to caller on stdout, one per line.
jq -e .ids[] < isos.response.json
