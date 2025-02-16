kind: manual

build-depends:
- core-deps/python-pefile.bst
- gnomeos/os-release-user.bst
- filename: freedesktop-sdk.bst:components/linux.bst
  strict: true
- filename: gnomeos/initramfs.bst
  strict: true
- filename: gnomeos/usr-image.bst
  strict: true
  config:
    location: /usr-image
- freedesktop-sdk.bst:components/sbsigntools.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:components/jq.bst

variables:
  (?):
  - arch == 'i686':
      efi-arch: ia32
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
    mount.usrfstype=squashfs
    lockdown=confidentiality
    systemd.firstboot=no

config:
  install-commands:
  - |
    set -x

    roothash=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).roothash' /usr-image/mini.repart.json)
    label=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).label' /usr-image/mini.repart.json)
    image_version="${label##gnomeos_usr_v_}"

    version="$(ls -1 /usr/lib/modules | head -n1)"

    mkdir -p "%{install-root}/efi/EFI/Linux/gnomeos_${image_version}.efi.extra.d"

    cat <<EOF >sbat.txt
    sbat,1,SBAT Version,sbat,1,https://github.com/rhboot/shim/blob/main/SBAT.md
    uki,1,UKI,uki,1,https://www.freedesktop.org/software/systemd/man/systemd-stub.html
    EOF

    ukify build \
      --secureboot-private-key=VENDOR.key \
      --secureboot-certificate=VENDOR.crt \
      --cmdline='security=apparmor' \
      --sbat=@sbat.txt \
      --output="%{install-root}/efi/EFI/Linux/gnomeos_${image_version}.efi.extra.d/apparmor.addon.efi"

    ukify build \
      --secureboot-private-key=VENDOR.key \
      --secureboot-certificate=VENDOR.crt \
      --cmdline="root=tmpfs rd.systemd.mask=systemd-repart.service systemd.mask=systemd-repart.service endless.live_boot gnomeos.extensions" \
      --sbat=@sbat.txt \
      --output="%{install-root}/efi/EFI/Linux/gnomeos_${image_version}.efi.extra.d/volatile.addon.efi"

    ukify build \
      --secureboot-private-key=VENDOR.key \
      --secureboot-certificate=VENDOR.crt \
      --cmdline='module_blacklist=nouveau nvidia_drm.modeset=1 nvidia.NVreg_PreserveVideoMemoryAllocations=1' \
      --sbat=@sbat.txt \
      --output="%{install-root}/efi/EFI/Linux/gnomeos_${image_version}.efi.extra.d/nvidia.addon.efi"

    # Note: because we sign root=tmpfs, it is important we do not use
    # a pcr key for ready pcrphase or later. Otherwise we allow the live ISO
    # to unlock encrypted disks, since you can log in as root on it.
    # Encrypted mounts should be mounted before local-fs.target, that
    # is before sysinit.target. That means we can allow up to
    # leave-initrd.
    ukify build \
      --output "%{install-root}/efi/EFI/Linux/gnomeos_${image_version}.efi" \
      --os-release=@/etc/os-release \
      --cmdline="%{kcmdline} usrhash=${roothash}" \
      --uname="${version}" \
      --pcr-private-key=tpm2-pcr-private.pem \
      --pcr-public-key=tpm2-pcr-public.pem \
      --phases="enter-initrd,enter-initrd:leave-initrd" \
      --secureboot-private-key=VENDOR.key \
      --secureboot-certificate=VENDOR.crt \
      --linux="/boot/vmlinuz" \
      --initrd="/usr/lib/modules/${version}/initramfs.img"

sources:
- kind: local
  path: files/boot-keys/VENDOR.key
- kind: local
  path: files/boot-keys/VENDOR.crt
- kind: local
  path: files/boot-keys/tpm2-pcr-public.pem
- kind: local
  path: files/boot-keys/tpm2-pcr-private.pem
