kind: meson
sources:
- kind: tar
  url: gnome_downloads:totem-pl-parser/3.26/totem-pl-parser-3.26.3.tar.xz
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
