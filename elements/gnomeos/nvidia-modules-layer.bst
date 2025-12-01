kind: manual

build-depends:
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- gnomeos/os-release.bst
- filename: gnomeos/initramfs/signed-nvidia-modules.bst
  config:
    location: '/sysroot-nvidia-modules'

sources:
- kind: local
  path: files/boot-keys/SYSEXT.key
- kind: local
  path: files/boot-keys/SYSEXT.crt

variables:
  repart-seed: a19b0f25-42ac-4c92-8921-d8d4079ec140
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
  - cp -a /sysroot-nvidia-modules sysroot-nvidia-modules
  - |
    mkdir -p sysroot-nvidia-modules/usr/lib/extension-release.d
    case "%{branch}" in
      master)
        version_id=Nightly
        ;;
      *)
        version_id="%{branch}"
        ;;
    esac
    cat <<EOF >sysroot-nvidia-modules/usr/lib/extension-release.d/extension-release.nvidia-modules_%{image-version}
    ID=org.gnome.os
    VERSION_ID=${version_id}
    SYSEXT_LEVEL=%{image-version}
    SYSEXT_SCOPE=initrd system
    EOF
    cp sysroot-nvidia-modules/usr/lib/extension-release.d/extension-release.nvidia-modules_%{image-version} \
       sysroot-nvidia-modules/usr/lib/extension-release.d/extension-release.nvidia-modules

  - |
    mkdir sysroot-nvidia-modules/etc
    cp /etc/os-release sysroot-nvidia-modules/etc/os-release

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
        --copy-source=sysroot-nvidia-modules \
        nvidia-modules-%{systemd-arch}_%{image-version}.raw

  install-commands:
  - |
    mv nvidia-modules-%{systemd-arch}_%{image-version}.raw %{install-root}
