kind: script

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/dosfstools.bst
- freedesktop-sdk.bst:components/mtools.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/jq.bst
- gnomeos/repart-config.bst
- filename: gnomeos/usr-image.bst
  config:
    location: '/sysroot'
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
    mkdir -p /var/tmp

  - |
    usr_uuid=$(jq -r '.[0].uuid' '/sysroot/mini.repart.json')
    usr_verity_uuid=$(jq -r '.[1].uuid' '/sysroot/mini.repart.json')

    cat <<EOF >>definitions/21-usr-A.conf
    CopyBlocks=/mini.usr.raw
    UUID=${usr_uuid}
    EOF
    cat <<EOF >>definitions/20-usr-verity-A.conf
    CopyBlocks=/mini.usr-verity.raw
    UUID=${usr_verity_uuid}
    EOF

  - |
    SYSTEMD_LOG_LEVEL=debug \
      systemd-repart \
        --definitions=definitions \
        --empty=create \
        --size=auto \
        --dry-run=no \
        --discard=no \
        --offline=true \
        --no-pager \
        --seed=%{repart-seed} \
        --root=/sysroot \
        '%{install-root}/disk.raw'

  - mv "%{install-root}/disk.raw" "%{install-root}/disk.img"
  - xz ${XZFLAGS} "%{install-root}/disk.img"
