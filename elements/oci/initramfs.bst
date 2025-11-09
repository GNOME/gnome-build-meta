kind: script

build-depends:
- gnomeos/generate-initramfs.bst
- oci/initramfs/deps.bst
- oci/initramfs/initial-scripts.bst
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:vm/prepare-image.bst

variables:
  sysroot-seed: 9473a621-1617-4679-87e5-031afef28359

environment:
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: /fakecap
  ZSTDFLAGS: -T%{max-jobs}
  DLOPEN_NOTE_IGNORE: archive:fido2:qrencode:ip4tc
  INITRD_MODE: oci

environment-nocache:
- ZSTDFLAGS

config:
  commands:
  - mkdir -p /tmp /efi /var/tmp /fakecap
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
    (
      cd /initramfs-root
      find . -print0 | sort -z | cpio --reproducible --null -H newc -o --quiet | zstd ${ZSTDFLAGS} >/initramfs.img
    )

  - |
    case '%{arch}' in
      x86_64)
        mkdir -p /microcode/kernel/x86/microcode
        cat /usr/lib/firmware/amd-ucode/microcode_amd*.bin >/microcode/kernel/x86/microcode/AuthenticAMD.bin
        cp /usr/lib/firmware/intel-ucode/GenuineIntel.bin /microcode/kernel/x86/microcode/GenuineIntel.bin
        (
          cd /microcode
          find . -print0 | sort -z | cpio --reproducible --null -H newc -o --quiet >/microcode.img
        )
      ;;
    esac

  - |
    version="$(ls -1 /lib/modules | head -n1)"
    mkdir -p "%{install-root}/usr/lib/modules/${version}"
    initrds=()
    case '%{arch}' in
      x86_64)
        initrds+=(/microcode.img)
        ;;
    esac
    initrds+=(/initramfs.img)
    cat "${initrds[@]}" >"%{install-root}/usr/lib/modules/${version}/initramfs.img"

  - mkdir -p "%{install-root}/efi/EFI"
  - cp -rT /efi/EFI "%{install-root}/efi/EFI"
