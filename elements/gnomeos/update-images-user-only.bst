kind: script

build-depends:
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:components/xz.bst
- filename: gnomeos/usr-image.bst
  config:
    location: /usr-image
- filename: gnomeos/signed-boot.bst
  config:
    location: /signed-boot
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

environment:
  XZFLAGS: '-T%{max-jobs}'
environment-nocache:
- XZFLAGS

config:
  commands:
  - |
    set -x

    label=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).label' /usr-image/mini.repart.json)
    image_version="${label##gnomeos_usr_v_}"

    roothash=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).roothash' /usr-image/mini.repart.json)

    usr_part_uuid="$(jq -r '(.[] | select(.file | match("/21-usr-A.conf$"))).uuid' /usr-image/repart.json)"
    usr_verity_part_uuid=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).uuid' /usr-image/repart.json)

    cp /usr-image/disk.usr-verity.raw "%{install-root}/usr-%{systemd-arch}_${image_version}_${usr_verity_part_uuid}.verity"
    xz ${XZFLAGS} "%{install-root}/usr-%{systemd-arch}_${image_version}_${usr_verity_part_uuid}.verity"
    cp /usr-image/disk.usr.raw "%{install-root}/usr-%{systemd-arch}_${image_version}_${usr_part_uuid}.raw"
    xz ${XZFLAGS} "%{install-root}/usr-%{systemd-arch}_${image_version}_${usr_part_uuid}.raw"

  - |
    set -x

    label=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).label' /usr-image/mini.repart.json)
    image_version="${label##gnomeos_usr_v_}"

    cp "/signed-boot/efi/EFI/Linux/gnomeos_${image_version}.efi" "%{install-root}/gnomeos-%{systemd-arch}_${image_version}.efi"
    xz ${XZFLAGS} "%{install-root}/gnomeos-%{systemd-arch}_${image_version}.efi"
    cp "/signed-boot/efi/EFI/Linux/gnomeos_${image_version}.efi.extra.d/apparmor.addon.efi" "%{install-root}/gnomeos-apparmor-%{systemd-arch}_${image_version}.efi"
    xz ${XZFLAGS} "%{install-root}/gnomeos-apparmor-%{systemd-arch}_${image_version}.efi"
    case '%{arch}' in
      x86_64)
        cp "/signed-boot/efi/EFI/Linux/gnomeos_${image_version}.efi.extra.d/nvidia.addon.efi" "%{install-root}/gnomeos-nvidia-%{systemd-arch}_${image_version}.addon.efi"
        xz ${XZFLAGS} "%{install-root}/gnomeos-nvidia-%{systemd-arch}_${image_version}.addon.efi"
      ;;
    esac

  - |
    cd "%{install-root}"
    sha256sum *.xz | tee SHA256SUMS
