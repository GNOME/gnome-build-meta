#! /bin/bash

set -euo pipefail

podman login -u "$OCI_REGISTRY_USER" -p "$OCI_REGISTRY_PASSWORD" "$OCI_REGISTRY"

set -x

tags=("$OCI_BRANCH")

if [ "$OCI_BRANCH" = "master" ]; then
    tags+=("latest" "nightly")
fi

for tag in "${tags[@]}"; do
    for name in platform sdk core; do
        echo "Uploading $name:$tag"
        podman push "$OCI_IMAGE_NAME:$name-$OCI_BRANCH" docker://"$OCI_IMAGE_NAME:$name-$tag"
    done
done
