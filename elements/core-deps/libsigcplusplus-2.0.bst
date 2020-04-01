kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libsigc++/2.10/libsigc++-2.10.3.tar.xz
  ref: 0b68dfc6313c6cc90ac989c6d722a1bf0585ad13846e79746aa87cb265904786
depends:
- core-deps/mm-common.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-documentation
