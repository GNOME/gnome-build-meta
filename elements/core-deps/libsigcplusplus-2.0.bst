kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libsigc++/2.10/libsigc++-2.10.3.tar.xz
  ref: 375e77e9ee66f3e730545b374b9b06659272dc73f49b0e9e370fafe397b2f5c3
depends:
- core-deps/mm-common.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-documentation
