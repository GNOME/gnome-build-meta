kind: meson
sources:
- kind: tar
  url: gnome_downloads:libsigc++/2.10/libsigc++-2.10.3.tar.xz
  ref: 0b68dfc6313c6cc90ac989c6d722a1bf0585ad13846e79746aa87cb265904786
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
