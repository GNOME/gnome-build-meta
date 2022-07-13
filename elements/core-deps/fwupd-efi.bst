kind: meson

sources:
- kind: tar
  url: github_files:fwupd/fwupd-efi/releases/download/1.2/fwupd-efi-1.2.tar.xz
  ref: 691c77f11c2101048d8dabaf63c6d0fe22cfad0e5d4322041c9babcebafceb3f
- kind: patch
  path: files/fwupd/riscv64.patch

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/gnu-efi.bst
- freedesktop-sdk.bst:bootstrap-import.bst
