kind: meson

sources:
- kind: tar
  url: github_com:fwupd/fwupd-efi/archive/1.0.tar.gz
  ref: 5f3fa4771be15b08f96cb0c17b6d13a1adf593cc57654c8f4ea63a33c2087f31
- kind: patch
  path: files/fwupd/riscv64.patch

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/gnu-efi.bst
- freedesktop-sdk.bst:bootstrap-import.bst
