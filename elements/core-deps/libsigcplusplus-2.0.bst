kind: meson
sources:
- kind: tar
  url: gnome_downloads:libsigc++/2.10/libsigc++-2.10.4.tar.xz
  ref: 1f5874358d9a21379024a4f4edba80a8a3aeb33f0531b192a6b1c35ed7dbfa3e
build-depends:
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/mm-common.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=false
    -Dwarnings=min
