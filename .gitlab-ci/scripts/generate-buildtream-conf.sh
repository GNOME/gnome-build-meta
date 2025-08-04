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

scheduler:
  # Keep building and find all the errors
  on-error: continue
  # Maximum number of simultaneous downloading tasks.
  fetchers: 32
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

cat <<EOF
artifacts:
  servers:
  - url: https://gbm.gnome.org:11004
    auth:
      client-key: client.key
      client-cert: client.crt
EOF

if [ "${1-}" != nopush ]; then
    cat <<EOF
    push: true
EOF
else
    cat <<EOF
    push: false
EOF
fi

cat <<EOF
source-caches:
  servers:
  - url: https://gbm.gnome.org:11004
    auth:
      client-key: client.key
      client-cert: client.crt
EOF

# Never push sources from protected branches
if [ "${CI_COMMIT_REF_PROTECTED-}" != true ] || [ "${CI_PIPELINE_SOURCE-}" = "schedule" ]; then
    cat <<EOF
    push: true
EOF
else
    cat <<EOF
    push: false
EOF
fi
