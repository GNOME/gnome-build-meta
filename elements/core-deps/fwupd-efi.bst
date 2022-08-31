kind: meson

sources:
- kind: tar
  url: github_files:fwupd/fwupd-efi/archive/refs/tags/1.3.tar.gz
- kind: patch
  path: files/fwupd/riscv64.patch

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/gnu-efi.bst
- freedesktop-sdk.bst:bootstrap-import.bst
