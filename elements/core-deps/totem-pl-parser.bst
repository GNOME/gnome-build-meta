kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/totem-pl-parser/3.26/totem-pl-parser-3.26.2.tar.xz
depends:
- core-deps/gmime3.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
