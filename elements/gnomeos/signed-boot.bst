kind: manual

build-depends:
- gnomeos/os-release.bst
- filename: freedesktop-sdk.bst:components/linux.bst
  strict: true
- filename: gnomeos/initramfs/image.bst
  strict: true
- filename: gnomeos/usr/image.bst
  strict: true
  config:
    location: /usr-image
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:components/systemd-ukify.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/sbsigntools-maybe.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

(?):
- arch == "x86_64":
    build-depends:
      (>):
      - filename: gnomeos-deps/microcode.bst
        strict: true

variables:
  strip-binaries: ''
  kcmdline: >-
    rw
    quiet splash
    mount.usrflags=ro
    mount.usrfstype=erofs
    systemd.verity_usr_options=panic-on-corruption
    lockdown=integrity
    systemd.firstboot=no
    rootflags=x-systemd.device-timeout=900
    zswap.max_pool_percent=35
    dm_verity.keyring_unsealed=1

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

    cat <<EOF >ukify-apparmor.conf
    [UKI]
    SecureBootPrivateKey=VENDOR.key
    SecureBootCertificate=VENDOR.crt
    Cmdline=security=apparmor
    SBAT=@sbat.txt
    EOF

    ukify build \
      --config=ukify-apparmor.conf \
      --output="%{install-root}/efi/EFI/Linux/gnomeos_%{image-version}.efi.extra.d/apparmor.addon.efi"

    cat <<EOF >ukify-live.conf
    [UKI]
    SecureBootPrivateKey=VENDOR.key
    SecureBootCertificate=VENDOR.crt
    Cmdline=root=live:gnomeos
    SBAT=@sbat.txt
    EOF

    ukify build \
      --config=ukify-live.conf \
      --output="%{install-root}/efi/EFI/Linux/gnomeos_%{image-version}.efi.extra.d/live.addon.efi"

    cat <<EOF >ukify-nvidia.conf
    [UKI]
    SecureBootPrivateKey=VENDOR.key
    SecureBootCertificate=VENDOR.crt
    Cmdline=gnomeos.nvidia-mode=1
    SBAT=@sbat.txt
    EOF

    ukify build \
      --config=ukify-nvidia.conf \
      --output="%{install-root}/efi/EFI/Linux/gnomeos_%{image-version}.efi.extra.d/nvidia.addon.efi"

    cat <<EOF >ukify-safe-mode.conf
    [UKI]
    Profile=TITLE=Safe mode
    Cmdline=%{kcmdline} usrhash=${roothash} gnomeos.safe-mode=1
    EOF

    ukify build \
      --config=ukify-safe-mode.conf \
      --output="profile-safe-mode.efi"

    case '%{arch}' in
      x86_64)
        MICROCODE=("/usr/lib/firmware/microcode.cpio")
        DEVICETREES=()
      ;;
      aarch64)
        MICROCODE=()
        DEVICETREES=(
        "/usr/lib/modules/${version}/dtbs/qcom/qcm6490-fairphone-fp5.dtb"
        "/usr/lib/modules/${version}/dtbs/qcom/sdm845-oneplus-enchilada.dtb"
        "/usr/lib/modules/${version}/dtbs/rockchip/rk3588-rock-5b.dtb"
        )
      ;;
      riscv64)
        MICROCODE=()
        DEVICETREES=(
        "/usr/lib/modules/${version}/dtbs/spacemit/k3-pico-itx.dtb"
        "/usr/lib/modules/${version}/dtbs/sophgo/sg2042-milkv-pioneer.dtb"
        )
      ;;
      *)
        MICROCODE=()
        DEVICETREES=()
      ;;
    esac

    # There is one main PCR key system-tpm2-pcr. It is used with 3 different
    # policyref:
    #  * initrd: To unlock only during initrd.
    #  * fstab: To unlock during early boot.
    #  * (no name): To unlock when the system is running.
    #
    # There are also 2 legacy keys without any policyref, only
    # useful for migration:
    #  * legacy-tpm2-pcr: The old initrd key, replaced with policyref "initrd".
    #  * legacy-fstab-tpm2-pcr: The old fstab key, replaced with policyref "fstab".
    #
    # Any installation done before introcution of the system-key is
    # using the legacy-tpm2-pcr key and will use it until LUKS2 tpm2
    # keyslots get re-enroll. This key will need to live until we
    # release stable.  legacy-fstab-tpm2-pcr has only been manually
    # used by advanced users.
    #
    # Our security model allows for an attacker to replace the rootfs
    # with a maliciously crafted one. This means that it's only safe to
    # unlock the real rootfs's encryption keys while in the initrd, before
    # we reach the leave-initrd pcrphase. For more details, including a
    # walkthrough of how such an attack would work, check out:
    # https://gitlab.gnome.org/GNOME/gnome-build-meta/-/issues/928
    #
    # The fstab policyref is typically for /etc/fstab entries, but
    # this should only be used for things that cannot take control of
    # the system. So for example /etc cannot be mounted like that. But
    # /home can.
    #
    # It is important that cryptenroll and repart use policyref=initrd.
    cat <<EOF >ukify.conf
    [UKI]
    OSRelease=@/etc/os-release
    Cmdline=%{kcmdline} usrhash=${roothash}
    Uname=${version}
    SignInitrdPCRs=yes
    PCRPKey=system-tpm2-pcr-public.pem
    SecureBootPrivateKey=VENDOR.key
    SecureBootCertificate=VENDOR.crt
    Linux=/usr/lib/modules/${version}/vmlinuz
    Initrd=/usr/lib/modules/${version}/initramfs.img
    ${MICROCODE:+Microcode=}${MICROCODE[@]}
    ${DEVICETREES:+DeviceTreeAuto=}${DEVICETREES[@]}

    [PCRSignature:initrd-legacy]
    PCRPrivateKey=legacy-tpm2-pcr-private.pem
    PCRPublicKey=legacy-tpm2-pcr-public.pem
    PolicyRef=
    Phases=enter-initrd

    [PCRSignature:initrd]
    PCRPrivateKey=system-tpm2-pcr-private.pem
    PCRPublicKey=system-tpm2-pcr-public.pem
    PolicyRef=initrd
    Phases=enter-initrd

    [PCRSignature:fstab-legacy]
    PCRPrivateKey=legacy-fstab-tpm2-pcr-private.pem
    PCRPublicKey=legacy-fstab-tpm2-pcr-public.pem
    PolicyRef=
    Phases=enter-initrd:leave-initrd

    [PCRSignature:fstab]
    PCRPrivateKey=system-tpm2-pcr-private.pem
    PCRPublicKey=system-tpm2-pcr-public.pem
    PolicyRef=fstab
    Phases=enter-initrd:leave-initrd

    [PCRSignature:system]
    PCRPrivateKey=system-tpm2-pcr-private.pem
    PCRPublicKey=system-tpm2-pcr-public.pem
    PolicyRef=
    Phases=enter-initrd:leave-initrd
           enter-initrd:leave-initrd:sysinit
           enter-initrd:leave-initrd:sysinit:ready
    EOF

    ukify build \
      --config=ukify.conf \
      --output="%{install-root}/efi/EFI/Linux/gnomeos_%{image-version}.efi" \
      --join-profile="profile-safe-mode.efi"

sources:
- kind: local
  path: files/boot-keys/VENDOR.key
- kind: local
  path: files/boot-keys/VENDOR.crt
- kind: local
  path: files/boot-keys/legacy-tpm2-pcr-public.pem
- kind: local
  path: files/boot-keys/legacy-tpm2-pcr-private.pem
- kind: local
  path: files/boot-keys/legacy-fstab-tpm2-pcr-public.pem
- kind: local
  path: files/boot-keys/legacy-fstab-tpm2-pcr-private.pem
- kind: local
  path: files/boot-keys/system-tpm2-pcr-public.pem
- kind: local
  path: files/boot-keys/system-tpm2-pcr-private.pem
