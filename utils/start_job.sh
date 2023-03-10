#!/bin/bash

# Start job on $OPENQA_HOST.
#
# On success, write the job ID returned by server to stdout.
#
# There are three ways to control test configuration:
#
# 1. File `config/vars.json` inside the tests directory.
# 2. The first three positional arguments, which control `WORKER_CLASS`,
#    `VERSION` and `CASEDIR` settings respectively.
# 3. Subsequent `KEY=VALUE` positional arguments which can control arbitrary
#    config values.

set -eu

worker_class="$1"
version="$2"
casedir="$3"

shift 3

# The values below WORKER_CLASS are duplicated in config/vars.json, we preserve
# them here for compatibility reasons.
openqa-cli api --apikey $OPENQA_API_KEY --apisecret $OPENQA_API_SECRET \
  --host $OPENQA_HOST \
  -X POST isos \
  CASEDIR="$casedir" \
  ISO=installer.iso \
  NEEDLES_DIR=$OPENQA_NEEDLES_GIT#$OPENQA_NEEDLES_BRANCH \
  VERSION=$version \
  WORKER_CLASS=$worker_class \
  ARCH=x86_64 \
  DISTRI=gnomeos \
  FLAVOR=iso \
  PART_TABLE_TYPE=gpt \
  QEMUCPU=host \
  QEMUCPUS=2 \
  QEMURAM=2560 \
  QEMUVGA="virtio" \
  UEFI=1 \
  UEFI_PFLASH_CODE=/usr/share/qemu/ovmf-x86_64-code.bin \
  $@ \
  | tee --append openqa.log | jq -e .ids[0]
