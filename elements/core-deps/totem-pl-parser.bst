kind: meson
sources:
- kind: tar
  url: gnome_downloads:totem-pl-parser/3.26/totem-pl-parser-3.26.4.tar.xz
  ref: c1576f551a67c2b3632a3dbea5d8b3e9966558af0cfeed58f07cec04728364f0
depends:
- core-deps/gmime3.bst
- sdk/glib.bst
- filename: sdk/gobject-introspection.bst
  type: build
- filename: components/libarchive.bst
  junction: freedesktop-sdk.bst
- filename: components/libgcrypt.bst
  junction: freedesktop-sdk.bst
- filename: components/libxml2.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
