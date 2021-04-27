kind: meson

sources:
- kind: tar
  url: github_com:fwupd/fwupd-efi/archive/1.0.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/gnu-efi.bst
- freedesktop-sdk.bst:bootstrap-import.bst
