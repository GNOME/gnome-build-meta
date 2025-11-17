#! /bin/bash

set -euo pipefail

podman login -u "$OCI_REGISTRY_USER" -p "$OCI_REGISTRY_PASSWORD" "$OCI_REGISTRY"

set -x

tags=("$OCI_BRANCH")

if [ "$OCI_BRANCH" = "master" ]; then
    tags+=("latest" "nightly")
fi

for tag in "${tags[@]}"; do
    for name in platform sdk gnomeos gnomeos-devel toolbox; do
        echo "Uploading $name:$tag"
        podman push --retry 3 "$OCI_IMAGE_NAME:$name-$OCI_BRANCH" docker://"$OCI_IMAGE_NAME:$name-$tag"
    done
    # This is the tag we were using for the image before !4255
    # Tag and push it for backwards compatibility
    podman tag "$OCI_IMAGE_NAME:toolbox-$OCI_BRANCH" "$OCI_IMAGE_NAME:core-$tag"
    podman push --retry 3  "$OCI_IMAGE_NAME:core-$tag"
done
