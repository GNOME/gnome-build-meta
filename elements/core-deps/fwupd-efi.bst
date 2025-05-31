kind: meson

sources:
- kind: tar
  url: github_files:fwupd/fwupd-efi/archive/refs/tags/1.6.tar.gz
  ref: 59f90974efb29e17445e62d537c9402992fbf9f83f130317defed659222ca909

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/gnu-efi.bst
- freedesktop-sdk.bst:components/grep.bst
- core-deps/python-pefile.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Defi_sbat_distro_id="gnome-os"
    -Defi_sbat_distro_pkgname="fwupd-efi"
