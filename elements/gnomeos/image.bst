kind: script

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/dosfstools.bst
- freedesktop-sdk.bst:components/mtools.bst
- freedesktop-sdk.bst:components/util-linux.bst
- gnomeos/repart-config.bst
- filename: gnomeos/usr-image.bst
  config:
    location: '/usr-image'
- filename: gnomeos/signed-boot.bst
  config:
    location: '/sysroot'
- filename: gnomeos/signed-boot-common.bst
  config:
    location: '/sysroot'
- filename: gnomeos/os-release-user.bst
  config:
    location: '/sysroot'

environment:
  XZFLAGS: -T%{max-jobs}

environment-nocache:
- XZFLAGS

variables:
  repart-seed: 9473a621-1617-4679-87e5-031afef28359

config:
  commands:
  - mkdir -p definitions
  - |
    for entry in /usr/lib/repart.d/*.conf; do
      name="$(basename "${entry}")"
      num="${name%%-*}"
      if [ "${num}" -lt 30 ]; then
        cp "${entry}" definitions/
      fi
    done

  - |
    rm -rf /sysroot/efi/EFI/Linux/gnomeos_*.efi.extra.d

  - |
    cp /usr-image/disk.raw '%{install-root}/disk.raw'

  - |
    mkdir -p /var/tmp

  - |
    SYSTEMD_LOG_LEVEL=debug \
      systemd-repart \
        --definitions=definitions \
        --empty=refuse \
        --dry-run=no \
        --discard=no \
        --offline=true \
        --no-pager \
        --seed=%{repart-seed} \
        --root=/sysroot \
        --sector-size 512 \
        '%{install-root}/disk.raw'

  - mv "%{install-root}/disk.raw" "%{install-root}/disk.img"
  - xz ${XZFLAGS} "%{install-root}/disk.img"
