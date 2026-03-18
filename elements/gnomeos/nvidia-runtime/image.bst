kind: manual

build-depends:
- gnomeos/save-perms.bst
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:components/systemd.bst
- filename: gnomeos/nvidia-runtime/layer.bst
  config:
    location: '/sysroot'

sources:
- kind: local
  path: files/boot-keys/SYSEXT.key
- kind: local
  path: files/boot-keys/SYSEXT.crt

variables:
  repart-seed: 53752261-a988-42fb-a585-b35ae0ab2af4
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
  - save-perms.py --restore sysroot/perms-usr.json sysroot/usr

  - |
    mkdir -p tmp

  - |
    TMPDIR='%{build-root}/tmp' \
    SYSTEMD_LOG_LEVEL=debug \
    SYSTEMD_REPART_MKFS_OPTIONS_EROFS="${EROFS_OPTIONS} ${EROFS_WORKERS}" \
      systemd-repart \
        --make-ddi=sysext \
        --empty=create \
        --size=auto \
        --dry-run=no \
        --discard=no \
        --offline=true \
        --no-pager \
        --private-key=SYSEXT.key \
        --certificate=SYSEXT.crt \
        --seed %{repart-seed} \
        --copy-source=sysroot \
        nvidia-runtime-%{systemd-arch}_%{image-version}.raw

  install-commands:
  - |
    mv nvidia-runtime-%{systemd-arch}_%{image-version}.raw %{install-root}
