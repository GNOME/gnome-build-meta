#!/bin/bash

# Start a specific test job on $OPENQA_HOST.
#
# On success, write the job ID returned by server to stdout.
#
# Positional arguments:
#
#  1. `WORKER_CLASS`: controls which test runner will be used
#  2. `VERSION`: just pass 'master'
#  3. `CASEDIR`: path on the test runner where the openqa-tests.git repo is cloned
#  4. `TEST`: testsuite to run. Defaults to `gnome_install` if not specified.
#
# Test suites are configured in the file `config/scenario_definitions.yaml`.

set -eu

script_dir="$(dirname $0)"

worker_class="$1"
version="$2"
casedir="$3"
testsuite="${4:-gnome_install}"

openqa-cli api --apikey $OPENQA_API_KEY --apisecret $OPENQA_API_SECRET \
  --host $OPENQA_HOST \
  -X POST isos \
  --param-file SCENARIO_DEFINITIONS_YAML="$casedir/config/scenario_definitions.yaml" \
  ARCH="x86_64" \
  CASEDIR="$casedir" \
  DISTRI="gnomeos" \
  FLAVOR="iso" \
  NEEDLES_DIR=$OPENQA_NEEDLES_GIT#$OPENQA_NEEDLES_BRANCH \
  TEST=$testsuite \
  VERSION=$version \
  WORKER_CLASS=$worker_class \
  | tee --append openqa.log | jq -e .ids[0]
