#! /bin/bash


arg="$1"
tag="unknown"
base_dir="$2"

if [[ "$arg" == "gnomeos" ]]; then
    tag="gnomeos"
elif [[ "$arg" == "devel" ]]; then
    tag="gnomeos-devel"
fi

if [[ -z "$base_dir" || $tag == "unknown" ]]; then
  echo "Usage: generate-bootc-image.sh <gnomeos or devel> <base-dir>"
  exit 1
fi

set -eux

img="oci/$tag.bst"
bst --strict build $img
bst artifact checkout --tar - $img | run0 podman load

# Needs an intermediate image for now
# https://github.com/bootc-dev/bootc/issues/1703
cat <<EOF >>/tmp/Containerfile
FROM quay.io/gnome_infrastructure/gnome-build-meta:$tag-master
RUN bootc container lint || true
EOF
run0 podman build --squash-all -t "test-image:latest" -f /tmp/Containerfile .
rm /tmp/Containerfile

if [ ! -e "${base_dir}/bootable.img" ] ; then
    fallocate -l 25G "${base_dir}/bootable.img"
fi

run0 podman run \
    --rm --privileged --pid=host \
    -it \
    -v "/var/lib/containers:/var/lib/containers" \
    -v "/dev:/dev" \
    -v "/tmp:/data" \
    --security-opt label=type:unconfined_t \
    "test-image:latest" \
    bootc \
    install to-disk --composefs-backend \
    --via-loopback /data/bootable.img \
    --filesystem "btrfs" \
    --wipe \
    --bootloader systemd \
    --karg systemd.firstboot=no \
    --karg splash \
    --karg quiet
