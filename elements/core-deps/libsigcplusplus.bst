kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libsigc++/3.0/libsigc++-3.0.0.tar.xz
depends:
- core-deps/mm-common.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-documentation
