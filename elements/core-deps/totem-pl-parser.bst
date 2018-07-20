kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/totem-pl-parser/3.26/totem-pl-parser-3.26.1.tar.xz
  ref: 6ae2c4b8acaf052af21b8db256b6314385de031ba721a2dbdb361e90d4b4b74c
depends:
- core-deps/glib.bst
- core-deps/gmime3.bst
- core-deps/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
