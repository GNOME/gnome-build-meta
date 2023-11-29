kind: script

build-depends:
- vm-secure/generate-initramfs.bst
- vm-secure/initramfs/deps.bst
- vm-secure/initramfs/initial-scripts.bst
- freedesktop-sdk.bst:vm/prepare-image.bst

variables:
  sysroot-seed: 9473a621-1617-4679-87e5-031afef28359

config:
  commands:
  - mkdir -p /tmp /efi /var/tmp
  - |
    prepare-image.sh \
       --seed "%{sysroot-seed}" \
       --rootsource /dev/gpt-auto-root \
       --rootfstype btrfs \
       --rootfsopts relatime \
       --noboot >/dev/null

  - dbus-uuidgen >/etc/machine-id
  - SYSTEMD_ESP_PATH=/efi bootctl --no-variables install
  - rm /etc/machine-id

  - mkdir -p '%{install-root}/usr/lib/'
  - cp -rT /usr/lib/modules '%{install-root}/usr/lib/modules'

  - mkdir -p "%{install-root}/efi/EFI/Linux"

  - |
    version="$(ls -1 /lib/modules | head -n1)"
    generate-initramfs /initramfs-root "${version}" "%{libdir}" "%{libdir}/systemd"

  - |
    (
      cd /initramfs-root
      find . -print0 | sort -z | cpio --reproducible --null -H newc -o --quiet | xz --check=crc32 --lzma2=dict=1MiB -T0 >/initramfs.img
    )

  - |
    mkdir -p /early/kernel/x86/microcode
    echo 1 >/early/early_cpio
    cat /usr/lib/firmware/amd-ucode/microcode_amd*.bin >/early/kernel/x86/microcode/AuthenticAMD.bin
    (
      cd /early
      find . -print0 | sort -z | cpio --reproducible --null -H newc -o --quiet >/early-initramfs.img
    )

  - |
    version="$(ls -1 /lib/modules | head -n1)"
    cat /early-initramfs.img /initramfs.img >"%{install-root}/usr/lib/modules/${version}/initramfs.img"

  - |
    mkdir -p '%{install-root}/efi/loader/keys/auto'
    for key in PK KEK DB; do
      cp "%{datadir}/efitools/efi/${key}-mic.auth" "%{install-root}/efi/loader/keys/auto/${key}.auth"
    done

  - |
    mkdir -p '%{install-root}/efi/loader/keys/private'
    for key in PK KEK DB; do
      cp "%{datadir}/efitools/efi/${key}.auth" "%{install-root}/efi/loader/keys/private/${key}.auth"
    done

  - mkdir -p "%{install-root}/efi/EFI"
  - cp -rT /efi/EFI "%{install-root}/efi/EFI"

  - mkdir -p "%{install-root}/efi/loader"
  - |
    cat <<EOF >%{install-root}/efi/loader/loader.conf
    timeout 3
    editor yes
    console-mode keep
    EOF

