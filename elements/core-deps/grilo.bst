kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/grilo/0.3/grilo-0.3.5.tar.xz
  ref: 49ffc8854ef25b4f038bbbcf734ea060a8dc681fdff5ec5e9a1cbaa002fc373a
depends:
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/libsoup.bst
- core-deps/totem-pl-parser.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
