kind: script

build-depends:
- freedesktop-sdk.bst:components/jq.bst
- filename: gnomeos/usr-image.bst
  config:
    location: /usr-image
- filename: gnomeos/signed-boot.bst
  config:
    location: /signed-boot
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  commands:
  - |
    set -x

    usr_part_uuid="$(jq -r '(.[] | select(.file | match("/10-usr.conf$"))).uuid' /usr-image/mini.repart.json)"
    usr_verity_part_uuid=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).uuid' /usr-image/mini.repart.json)

    mv /usr-image/mini.usr-verity.raw "%{install-root}/usr-%{systemd-arch}_%{image-version}_${usr_verity_part_uuid}.verity"
    mv /usr-image/mini.usr.raw "%{install-root}/usr-%{systemd-arch}_%{image-version}_${usr_part_uuid}.raw"

  - |
    set -x

    cp "/signed-boot/efi/EFI/Linux/gnomeos_%{image-version}.efi" "%{install-root}/gnomeos-%{systemd-arch}_%{image-version}.efi"
    cp "/signed-boot/efi/EFI/Linux/gnomeos_%{image-version}.efi.extra.d/apparmor.addon.efi" "%{install-root}/gnomeos-apparmor-%{systemd-arch}_%{image-version}.efi"
    case '%{arch}' in
      x86_64)
        cp "/signed-boot/efi/EFI/Linux/gnomeos_%{image-version}.efi.extra.d/nvidia.addon.efi" "%{install-root}/gnomeos-nvidia-%{systemd-arch}_%{image-version}.addon.efi"
      ;;
    esac

  - |
    cd "%{install-root}"
    sha256sum * | tee SHA256SUMS
