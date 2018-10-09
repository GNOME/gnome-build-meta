kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/totem-pl-parser/3.26/totem-pl-parser-3.26.1.tar.xz
depends:
- core-deps/gmime3.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
