kind: manual

build-depends:
- gnomeos/save-perms.bst
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:components/systemd.bst
- filename: gnomeos/snapd/layer.bst
  config:
    location: '/sysroot'

sources:
- kind: local
  path: files/boot-keys/SYSEXT.key
- kind: local
  path: files/boot-keys/SYSEXT.crt

variables:
  repart-seed: 42a68ae3-36dd-4549-a0e6-47404842b63e
  strip-binaries: ''

environment:
  EROFS_OPTIONS: -z zstd --all-time -T %{filesystem-time} -E fragments,fragdedupe=inode
  EROFS_WORKERS: --workers=%{max-jobs}
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: '%{build-root}/fakecap'

environment-nocache:
- EROFS_WORKERS

config:
  build-commands:
  - mkdir fakecap
  - cp -a /sysroot sysroot
  - systemd-tmpfiles --root=sysroot --create --prefix=/usr --prefix=/etc gnomeos-initial-snapd.conf

  - |
    mkdir -p tmp

  - |
    TMPDIR='%{build-root}/tmp' \
    SYSTEMD_LOG_LEVEL=debug \
    SYSTEMD_REPART_MKFS_OPTIONS_EROFS="${EROFS_OPTIONS} ${EROFS_WORKERS}" \
      systemd-repart \
        --empty=create \
        --make-ddi=sysext \
        --size=auto \
        --dry-run=no \
        --discard=no \
        --offline=true \
        --no-pager \
        --private-key=SYSEXT.key \
        --certificate=SYSEXT.crt \
        --seed %{repart-seed} \
        --copy-source=sysroot \
        snapd-%{systemd-arch}_%{image-version}.raw

  - |
    TMPDIR='%{build-root}/tmp' \
    SYSTEMD_LOG_LEVEL=debug \
    SYSTEMD_REPART_MKFS_OPTIONS_EROFS="${EROFS_OPTIONS} ${EROFS_WORKERS}" \
      systemd-repart \
        --empty=create \
        --make-ddi=confext \
        --size=auto \
        --dry-run=no \
        --discard=no \
        --offline=true \
        --no-pager \
        --private-key=SYSEXT.key \
        --certificate=SYSEXT.crt \
        --seed %{repart-seed} \
        --copy-source=sysroot \
        snapd-confext-%{systemd-arch}_%{image-version}.raw

  install-commands:
  - |
    mv snapd-%{systemd-arch}_%{image-version}.raw %{install-root}
    mv snapd-confext-%{systemd-arch}_%{image-version}.raw %{install-root}
