kind: meson

sources:
- kind: tar
  url: github_files:fwupd/fwupd-efi/releases/download/1.2/fwupd-efi-1.2.tar.xz
- kind: patch
  path: files/fwupd/riscv64.patch

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/gnu-efi.bst
- freedesktop-sdk.bst:bootstrap-import.bst
