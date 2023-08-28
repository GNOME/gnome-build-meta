kind: script

build-depends:
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
    for format in squashfs verity; do
      image_name="$(readlink "/usr-image/usr.${format}")"
      cp "/usr-image/${image_name}" "%{install-root}/${image_name}"
      xz ${XZFLAGS} "%{install-root}/${image_name}"
    done

  - |
    set -x
    usr_img="$(readlink /usr-image/usr.squashfs)"
    image_version="${usr_img##usr_}"
    image_version="${image_version%.squashfs}"
    image_version="${image_version%_*}"
    cp "/signed-boot/efi/EFI/Linux/gnomeos_${image_version}.efi" '%{install-root}/'
    xz ${XZFLAGS} "%{install-root}/gnomeos_${image_version}.efi"

  - |
    cd "%{install-root}"
    sha256sum *.xz | tee SHA256SUMS
