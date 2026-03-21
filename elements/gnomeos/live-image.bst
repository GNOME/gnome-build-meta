kind: script

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/dosfstools.bst
- freedesktop-sdk.bst:components/mtools.bst
- freedesktop-sdk.bst:components/util-linux.bst
- gnomeos/repart-config-iso.bst
- filename: gnomeos/usr/image.bst
  config:
    location: '/usr-image'
- filename: gnomeos/signed-boot.bst
  config:
    location: '/sysroot'
- filename: gnomeos/signed-boot-common.bst
  config:
    location: '/sysroot'
- filename: gnomeos/os-release.bst
  config:
    location: '/sysroot'

variables:
  repart-seed: 9473a621-1617-4679-87e5-031afef28359

config:
  commands:
  - mkdir -p definitions
  - |
    cp /usr/lib/repart.iso.d/*.conf definitions/

  - |
    for extra in /sysroot/efi/EFI/Linux/gnomeos_*.efi.extra.d/*; do
      case "${extra}" in
        */live.addon.efi)
          # Keep root=live:gnomeos
          ;;
        *)
          rm -rf "${extra}"
          ;;
      esac
    done

  - |
    # Let's make a removable media ESP. We need to remove the
    # fallback. See
    # https://github.com/rhboot/shim/blob/main/README.fallback

    # BOOT/BOOTX64.EFI will boot instead
    rm -rf /sysroot/efi/EFI/org.gnome.os
    # remove the fallback so we do not register boot entries
    rm /sysroot/efi/EFI/BOOT/fb*.efi
    # remove MOK manager so we do not write MOKs
    rm /sysroot/efi/EFI/BOOT/mm*.efi

    # The iso should never enroll secure boot keys
    rm -rf /sysroot/efi/loader/keys

  - |
    mkdir -p /var/tmp

  - |
    mkdir -p /build

  - |
    mv /usr-image/mini.usr.raw /sysroot/
    mv /usr-image/mini.usr-verity.raw /sysroot/

  - |
    usr_uuid=$(jq -r '.[0].uuid' /usr-image/mini.repart.json)
    usr_verity_uuid=$(jq -r '.[1].uuid' /usr-image/mini.repart.json)
    cat <<EOF >>definitions/21-usr.conf
    UUID=${usr_uuid}
    EOF
    cat <<EOF >>definitions/20-usr-verity.conf
    UUID=${usr_verity_uuid}
    EOF

  - |
    SYSTEMD_LOG_LEVEL=debug \
      systemd-repart \
        --el-torito=yes \
        --el-torito-volume="%{installer-volume-id}" \
        --el-torito-system=LINUX \
        --el-torito-publisher=GNOME \
        --sector-size=512 \
        --definitions=definitions \
        --empty=create \
        --dry-run=no \
        --size=auto \
        --discard=no \
        --offline=true \
        --no-pager \
        --seed=%{repart-seed} \
        --root=/sysroot \
        --split=true \
        /build/disk.raw \
        --json=pretty \
        >'/build/disk.repart.json'

  - |
    mv /build/disk.raw "%{install-root}/disk.iso"
