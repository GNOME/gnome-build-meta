kind: meson

sources:
- kind: git_repo
  url: github:fwupd/fwupd-efi.git
  track: '*.*'
  ref: 1.7-0-gcfd0be286a9b050c1aa4bfa3f0820256903a264a

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/genpeimg.bst
- freedesktop-sdk.bst:components/gnu-efi.bst
- freedesktop-sdk.bst:components/grep.bst
- freedesktop-sdk.bst:components/python3-pefile.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Defi_sbat_distro_id="gnome-os"
    -Defi_sbat_distro_pkgname="fwupd-efi"
