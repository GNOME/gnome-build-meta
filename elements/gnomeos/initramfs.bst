kind: script

build-depends:
- gnomeos/generate-initramfs.bst
- gnomeos/initramfs/deps.bst
- gnomeos/initramfs/initial-scripts.bst
- freedesktop-sdk.bst:vm/prepare-image.bst

variables:
  sysroot-seed: 9473a621-1617-4679-87e5-031afef28359

config:
  commands:
  - mkdir -p /tmp /efi /var/tmp
  - |
    prepare-image.sh \
       --seed "%{sysroot-seed}" \
       --noroot --noboot >/dev/null

  - dbus-uuidgen >/etc/machine-id
  - SYSTEMD_ESP_PATH=/efi bootctl --no-variables install
  - rm /etc/machine-id

  - mkdir -p "%{install-root}/efi/EFI/Linux"

  - |
    version="$(ls -1 /lib/modules | head -n1)"
    generate-initramfs /initramfs-root "${version}" "%{libdir}" "%{libdir}/systemd"

  - |
    case '%{arch}' in
      x86_64)
        version="$(ls -1 /lib/modules | head -n1)"
        mkdir -p /initramfs-root/usr/lib/modules/"${version}"/kernel/drivers/video
        cp /usr/lib/modules/"${version}"/kernel/drivers/video/nvidia*.ko* /initramfs-root/usr/lib/modules/"${version}"/kernel/drivers/video/
        depmod -a -b /initramfs-root/usr "${version}"
        rm -rf /initramfs-root/usr/lib/modules/"${version}"/kernel/drivers/video/nvidia*.ko*
        ;;
    esac

  - |
    (
      cd /initramfs-root
      find . -print0 | sort -z | cpio --reproducible --null -H newc -o --quiet | xz --check=crc32 --lzma2=dict=1MiB -T0 >/initramfs.img
    )

  - |
    case '%{arch}' in
      x86_64)
        mkdir -p /early/kernel/x86/microcode
        cat /usr/lib/firmware/amd-ucode/microcode_amd*.bin >/early/kernel/x86/microcode/AuthenticAMD.bin
        cp /usr/lib/firmware/intel-ucode/GenuineIntel.bin /early/kernel/x86/microcode/GenuineIntel.bin
        (
          cd /early
          find . -print0 | sort -z | cpio --reproducible --null -H newc -o --quiet >/early-initramfs.img
        )
      ;;
    esac

  - |
    version="$(ls -1 /lib/modules | head -n1)"
    mkdir -p "%{install-root}/usr/lib/modules/${version}"
    (
      case '%{arch}' in
        x86_64)
          cat /early-initramfs.img
        ;;
      esac
      cat /initramfs.img
    ) >"%{install-root}/usr/lib/modules/${version}/initramfs.img"

  - |
    case "%{arch}" in
      x86_64|aarch64)
        mkdir -p '%{install-root}/efi/loader/keys/auto'
        for key in PK KEK DB; do
          cp "%{datadir}/efitools/efi/${key}-mic.auth" "%{install-root}/efi/loader/keys/auto/${key}.auth"
        done
      ;;
    esac

  - |
    case "%{arch}" in
      x86_64|aarch64)
        mkdir -p '%{install-root}/efi/loader/keys/private'
        for key in PK KEK DB; do
          cp "%{datadir}/efitools/efi/${key}.auth" "%{install-root}/efi/loader/keys/private/${key}.auth"
        done
      ;;
    esac

  - mkdir -p "%{install-root}/efi/EFI"
  - cp -rT /efi/EFI "%{install-root}/efi/EFI"

  - mkdir -p "%{install-root}/efi/loader"
  - |
    cat <<EOF >%{install-root}/efi/loader/loader.conf
    timeout 3
    editor yes
    console-mode keep
    EOF

