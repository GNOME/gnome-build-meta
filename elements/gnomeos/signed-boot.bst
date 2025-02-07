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
  devicetree-args: ''
  (?):
  - arch == 'i686':
      efi-arch: ia32
  - arch == 'x86_64':
      efi-arch: x64
  - arch == 'aarch64':
      efi-arch: aa64
      devicetree-args: >-
        --devicetree-auto="/boot/dtbs/rockchip/rk3588-rock-5b.dtb"
        --devicetree-auto="/boot/dtbs/rockchip/rk3399-pinephone-pro.dtb"
        --devicetree-auto="/boot/dtbs/allwinner/sun50i-a64-pinephone-1.0.dtb"
        --devicetree-auto="/boot/dtbs/allwinner/sun50i-a64-pinephone-1.2.dtb"
        --devicetree-auto="/boot/dtbs/allwinner/sun50i-a64-pinephone-1.1.dtb"
  - arch == 'riscv64':
      efi-arch: riscv64
  kcmdline: >-
    rw
    mount.usrflags=ro
    mount.usrfstype=squashfs
    lockdown=confidentiality
    systemd.firstboot=no
    root=LABEL=root
    loglevel=10
    console=ttyS2,1500000n8
    console=tty0
    consoleblank=0

config:
  install-commands:
  - |
    set -x

    roothash=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).roothash' /usr-image/repart.json)
    label=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).label' /usr-image/repart.json)
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
      --cmdline='module_blacklist=nouveau nvidia_drm.modeset=1 nvidia.NVreg_PreserveVideoMemoryAllocations=1' \
      --sbat=@sbat.txt \
      --output="%{install-root}/efi/EFI/Linux/gnomeos_${image_version}.efi.extra.d/nvidia.addon.efi"

    ukify build \
      --output "%{install-root}/efi/EFI/Linux/gnomeos_${image_version}.efi" \
      --os-release=@/etc/os-release \
      --cmdline="%{kcmdline} usrhash=${roothash}" \
      --uname="${version}" \
      --pcr-private-key=tpm2-pcr-private.pem \
      --pcr-public-key=tpm2-pcr-public.pem \
      --phases="enter-initrd,enter-initrd:leave-initrd,enter-initrd:leave-initrd:sysinit" \
      --secureboot-private-key=VENDOR.key \
      --secureboot-certificate=VENDOR.crt \
      --linux="/boot/vmlinuz" \
      --initrd="/usr/lib/modules/${version}/initramfs.img" \
      %{devicetree-args}

sources:
- kind: local
  path: files/boot-keys/VENDOR.key
- kind: local
  path: files/boot-keys/VENDOR.crt
- kind: local
  path: files/boot-keys/tpm2-pcr-public.pem
- kind: local
  path: files/boot-keys/tpm2-pcr-private.pem
