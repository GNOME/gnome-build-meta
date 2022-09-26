#!/bin/bash

# Start job on $OPENQA_HOST.
#
# On success, write the job ID returned by server to stdout.

set -eu

worker_class=$1
version=$2

openqa-cli api --apikey $OPENQA_API_KEY --apisecret $OPENQA_API_SECRET \
  --host $OPENQA_HOST \
  -X POST isos \
  ISO=installer.iso \
  DISTRI=gnomeos \
  VERSION=$version \
  FLAVOR=iso \
  ARCH=x86_64 \
  WORKER_CLASS=$worker_class \
  CASEDIR=$(pwd) \
  NEEDLES_DIR=$OPENQA_NEEDLES_GIT#$OPENQA_NEEDLES_BRANCH | tee --append openqa.log | jq -e .ids[0]
