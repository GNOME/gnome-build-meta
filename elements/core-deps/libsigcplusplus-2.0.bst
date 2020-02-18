kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libsigc++/2.10/libsigc++-2.10.2.tar.xz
  ref: b1ca0253379596f9c19f070c83d362b12dfd39c0a3ea1dd813e8e21c1a097a98
depends:
- core-deps/mm-common.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-documentation
