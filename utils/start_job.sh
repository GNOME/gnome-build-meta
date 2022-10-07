#!/bin/bash

# Start job on $OPENQA_HOST.
#
# On success, write the job ID returned by server to stdout.

set -e

worker_class=$1
version=$2

if [ -n "$3" ]; then
    casedir="$3"
else
    casedir="$(pwd)"
fi

openqa-cli api --apikey $OPENQA_API_KEY --apisecret $OPENQA_API_SECRET \
  --host $OPENQA_HOST \
  -X POST isos \
  ARCH=x86_64 \
  CASEDIR="$casedir" \
  DISTRI=gnomeos \
  FLAVOR=iso \
  ISO=installer.iso \
  NEEDLES_DIR=$OPENQA_NEEDLES_GIT#$OPENQA_NEEDLES_BRANCH \
  PART_TABLE_TYPE=gpt \
  QEMUCPU=host \
  QEMUCPUS=2 \
  QEMURAM=2560 \
  QEMUVGA="virtio" \
  UEFI=1 \
  UEFI_PFLASH_CODE=/usr/share/qemu/ovmf-x86_64-code.bin \
  VERSION=$version \
  WORKER_CLASS=$worker_class \
  | tee --append openqa.log | jq -e .ids[0]
