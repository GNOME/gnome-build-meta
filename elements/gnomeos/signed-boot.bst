kind: manual

build-depends:
- gnomeos/os-release-user.bst
- filename: freedesktop-sdk.bst:components/linux.bst
  strict: true
- filename: gnomeos/initramfs.bst
  strict: true
- filename: gnomeos/usr-image.bst
  strict: true
  config:
    location: /usr-image
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:components/systemd-ukify.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/sbsigntools.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:components/util-linux.bst

variables:
  strip-binaries: ''
  (?):
  - arch == 'x86_64':
      efi-arch: x64
  - arch == 'aarch64':
      efi-arch: aa64
  - arch == 'riscv64':
      efi-arch: riscv64
  kcmdline: >-
    rw
    quiet splash
    mount.usrflags=ro
    mount.usrfstype=erofs
    lockdown=confidentiality
    systemd.firstboot=no

config:
  install-commands:
  - |
    set -x

    roothash=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).roothash' /usr-image/mini.repart.json)

    version="$(ls -1 /usr/lib/modules | head -n1)"

    mkdir -p "%{install-root}/efi/EFI/Linux/gnomeos_%{image-version}.efi.extra.d"

    cat <<EOF >sbat.txt
    sbat,1,SBAT Version,sbat,1,https://github.com/rhboot/shim/blob/main/SBAT.md
    uki,1,UKI,uki,1,https://www.freedesktop.org/software/systemd/man/systemd-stub.html
    EOF

    ukify build \
      --secureboot-private-key=VENDOR.key \
      --secureboot-certificate=VENDOR.crt \
      --cmdline='security=apparmor' \
      --sbat=@sbat.txt \
      --output="%{install-root}/efi/EFI/Linux/gnomeos_%{image-version}.efi.extra.d/apparmor.addon.efi"

    ukify build \
      --secureboot-private-key=VENDOR.key \
      --secureboot-certificate=VENDOR.crt \
      --cmdline="root=live:gnomeos" \
      --sbat=@sbat.txt \
      --output="%{install-root}/efi/EFI/Linux/gnomeos_%{image-version}.efi.extra.d/live.addon.efi"

    ukify build \
      --secureboot-private-key=VENDOR.key \
      --secureboot-certificate=VENDOR.crt \
      --cmdline='module_blacklist=nouveau nvidia_drm.modeset=1 nvidia.NVreg_PreserveVideoMemoryAllocations=1' \
      --sbat=@sbat.txt \
      --output="%{install-root}/efi/EFI/Linux/gnomeos_%{image-version}.efi.extra.d/nvidia.addon.efi"

    case '%{arch}' in
      x86_64)
        MICROCODE=("--microcode=/usr/lib/modules/${version}/microcode.img")
      ;;
      *)
        MICROCODE=()
      ;;
    esac

    # Note: Our security model allows for an attacker to replace the rootfs
    # with a maliciously crafted one. This means that it's only safe to
    # unlock the real rootfs's encryption keys while in the initrd, before
    # we reach the leave-initrd pcrphase. For more details, including a
    # walkthrough of how such an attack would work, check out:
    # https://gitlab.gnome.org/GNOME/gnome-build-meta/-/issues/928
    #
    # We have an extra key for /etc/fstab entries, but this should
    # only be used for things that cannot take control of the
    # system. So for example /etc cannot be mounted like that. But
    # /home can. If you want to enroll such a disk, use
    # `--tpm2-public-key=/usr/share/gnomeos/fstab-key.pem`.
    #
    # It is important that --pcrpkey points the the initrd-only
    # key. Not the fstab key. This is the key that will be
    # automatically used to enroll /.
    ukify build \
      --output "%{install-root}/efi/EFI/Linux/gnomeos_%{image-version}.efi" \
      --os-release=@/etc/os-release \
      --cmdline="%{kcmdline} usrhash=${roothash}" \
      --uname="${version}" \
      --pcr-private-key=tpm2-pcr-private.pem \
      --pcr-public-key=tpm2-pcr-public.pem \
      --phases="enter-initrd" \
      --pcrpkey=tpm2-pcr-public.pem \
      --pcr-private-key=fstab-tpm2-pcr-private.pem \
      --pcr-public-key=fstab-tpm2-pcr-public.pem \
      --phases="enter-initrd:leave-initrd" \
      --secureboot-private-key=VENDOR.key \
      --secureboot-certificate=VENDOR.crt \
      --linux="/boot/vmlinuz" \
      --initrd="/usr/lib/modules/${version}/initramfs.img" \
      "${MICROCODE[@]}"

sources:
- kind: local
  path: files/boot-keys/VENDOR.key
- kind: local
  path: files/boot-keys/VENDOR.crt
- kind: local
  path: files/boot-keys/tpm2-pcr-public.pem
- kind: local
  path: files/boot-keys/tpm2-pcr-private.pem
- kind: local
  path: files/boot-keys/fstab-tpm2-pcr-public.pem
- kind: local
  path: files/boot-keys/fstab-tpm2-pcr-private.pem
