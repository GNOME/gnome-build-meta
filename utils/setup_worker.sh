#!/bin/bash

# Prepare a local OpenQA worker and register it with $OPENQA_HOST.

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
# Hostname autodetection fails if hostname isn't an FQDN.
# Set hostname to explicitly allow this kind of "bad" hostname.
WORKER_HOSTNAME = $(hostname).no-route.example.com
EOF
