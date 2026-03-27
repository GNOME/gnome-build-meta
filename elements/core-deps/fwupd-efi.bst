kind: meson

sources:
- kind: tar
  url: github_files:fwupd/fwupd-efi/archive/refs/tags/1.8.tar.gz
  ref: c9f1f9b9b967ea50eb0b478f0d7693d6673d4cd76c8e7eb80c55fc44ec928925

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/gnu-efi.bst
- core-deps/python-pefile.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Defi_sbat_distro_id="gnome-os"
    -Defi_sbat_distro_pkgname="fwupd-efi"
