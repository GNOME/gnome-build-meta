#!/bin/bash

set -eu

cat <<\EOF
# This is the buildstream configuration used for CI

# The log directory
logdir: ${CI_PROJECT_DIR}/logs

# build area and artifacts
cachedir: ${CI_PROJECT_DIR}/cache

# Use the buildbox-casd running on the runner for cache storage and execution
cache:
  storage-service:
    url: unix:/run/casd/casd.sock
    connection-config:
      keepalive-time: 60

remote-execution:
  execution-service:
    url: unix:/run/casd/casd.sock
    connection-config:
      keepalive-time: 60
  action-cache-service:
    url: unix:/run/casd/casd.sock
    connection-config:
      keepalive-time: 60

# Keep building and find all the errors
scheduler:
  on-error: continue
  # Unlimited builds, they will be limited by buildbox-casd
  builders: 0

# Get a lot of output in case of errors
logging:
  message-format: '[%{wallclock}][%{elapsed}][%{key}][%{element}] %{action} %{message}'
  error-lines: 80

# retry in case of build failure
build:
  retry-failed: True

# Use the gnome mirror by default
projects:
  gnome:
    default-mirror: gnome
EOF

if [ "${1-}" != nopush ]; then
    cat <<EOF
artifacts:
  servers:
  - url: https://gbm.gnome.org:11004
    push: true
    auth:
      client-key: client.key
      client-cert: client.crt
EOF
fi

# Never push sources from protected branches
if [ "${PUSH_SOURCE-}" = 1 ]; then
    cat <<EOF
source-caches:
  servers:
  - url: https://gbm.gnome.org:11004
    push: true
    auth:
      client-key: client.key
      client-cert: client.crt
EOF
fi
