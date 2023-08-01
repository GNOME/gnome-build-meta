kind: meson

sources:
- kind: tar
  url: github_files:fwupd/fwupd-efi/archive/refs/tags/1.4.tar.gz
  ref: b1f5fe72e16d4e2f4c616da416dc93bd79331057336208465da37bafe8f8f83d

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
