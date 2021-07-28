#!/bin/bash

# Prepare a local OpenQA worker and register it with $OPENQA_HOST.
#
# On success, write the machine ID returned by server to stdout.

set -eu

# Unique identifier for this machine, so we can tell the server to schedule
# tests here.
worker_class=$1

# Config for local OpenQA worker instance.
cat >/etc/openqa/workers.ini <<EOF
[global]
WORKER_CLASS=$worker_class
BACKEND = qemu
HOST = $OPENQA_HOST
EOF

# Register local worker as a new machine on OpenQA server.
openqa-cli api --apikey $OPENQA_API_KEY --apisecret $OPENQA_API_SECRET \
  --host $OPENQA_HOST \
  -X POST machines/ \
  name=gitlab-runner-$worker_class \
  backend=qemu \
  settings[ARCH]=x86_64 \
  settings[PART_TABLE_TYPE]=gpt \
  settings[QEMUCPU]=host \
  settings[QEMUCPUS]=2 \
  settings[QEMURAM]=2560 \
  settings[QEMUVGA]=virtio \
  settings[UEFI]=1 \
  settings[UEFI_PFLASH_CODE]=/usr/share/qemu/ovmf-x86_64-code.bin \
  settings[WORKER_CLASS]=$worker_class | tee --append openqa.log | jq -e .id > /tmp/machine_id
