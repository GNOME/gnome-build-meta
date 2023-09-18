kind: script

build-depends:
- freedesktop-sdk.bst:components/jq.bst
- filename: vm-secure/usr-image.bst
  config:
    location: /usr-image
- filename: vm-secure/signed-boot.bst
  config:
    location: /signed-boot
- freedesktop-sdk.bst:bootstrap-import.bst

environment:
  XZFLAGS: '-T%{max-jobs}'
environment-nocache:
- XZFLAGS

config:
  commands:
  - |
    set -x

    label=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).label' /usr-image/repart.json)
    image_version="${label##gnomeos_usr_v_}"

    roothash=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).roothash' /usr-image/repart.json)

    usr_part_uuid="$(jq -r '(.[] | select(.file | match("/10-devel.conf$"))).uuid' /usr-image/repart.json)"
    usr_verity_part_uuid=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).uuid' /usr-image/repart.json)

    cp /usr-image/disk.usr-verity.raw "%{install-root}/usr_${image-version}_${usr_verity_part_uuid}.verity"
    xz ${XZFLAGS} "%{install-root}/usr_${image-version}_${usr_verity_part_uuid}.verity"
    cp /usr-image/disk.usr.raw "%{install-root}/usr_${image-version}_${usr_part_uuid}.squashfs"
    xz ${XZFLAGS} "%{install-root}/usr_${image-version}_${usr_part_uuid}.squashfs"

  - |
    set -x

    label=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).label' /usr-image/repart.json)
    image_version="${label##gnomeos_usr_v_}"

    cp "/signed-boot/efi/EFI/Linux/gnomeos_${image_version}.efi" '%{install-root}/'
    xz ${XZFLAGS} "%{install-root}/gnomeos_${image_version}.efi"

  - |
    cd "%{install-root}"
    sha256sum *.xz | tee SHA256SUMS
