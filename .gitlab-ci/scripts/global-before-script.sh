#! /bin/bash

set -e
set -o pipefail
set -x

# Ensure the log directory exists
mkdir -p logs

# Setup certificates and image version for sysupdate
if [ "${CI_COMMIT_REF_PROTECTED-}" != true ] || [ "${CI_PIPELINE_SOURCE-}" = "schedule" ]; then
    make -C files/boot-keys generate-keys IMPORT_MODE=snakeoil
    export PUSH_SOURCE=1
else
    make -C files/boot-keys generate-keys IMPORT_MODE=import
fi

# Setup the token for pushing to the cache
echo $CACHE_TOKEN >.gitlab-ci/gbm-cache-token

./.gitlab-ci/scripts/generate-buildtream-conf.sh nopush >.gitlab-ci/buildstream-nopush.conf
./.gitlab-ci/scripts/generate-buildtream-conf.sh >.gitlab-ci/buildstream.conf

# Check that the commit timestamps are increasing, as our version numbers depend on that
git log --format=%cd --date=unix | sort --check --reverse --numeric-sort

source ./.gitlab-ci/scripts/export-image-version.sh
echo "image-version: ${IMAGE_VERSION}" > include/image-version.yml

if [ "${CI_COMMIT_REF_PROTECTED-}" = true ]; then
    commit=$(git rev-parse HEAD)
    commit_time=$(git log -1 --format=format:%ct)
    commit_date_pretty=$(git show -s --format=%ci)
else
    commit=unknown
    commit_time=1321009871
    commit_date_pretty=unknown
fi

echo "filesystem-time: ${commit_time}" >> include/image-version.yml
echo "commit: '${commit}'" >> include/image-version.yml
echo "commit-date-pretty: '${commit_date_pretty}'" >> include/image-version.yml

cat include/image-version.yml

set +x
