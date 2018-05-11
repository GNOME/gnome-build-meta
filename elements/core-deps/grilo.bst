kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/grilo/0.3/grilo-0.3.4.tar.xz
  ref: 7c6964053b42574c2f14715d2392a02ea5cbace955eb73e067c77aa3e43b066e
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/libsoup.bst
- core-deps/totem-pl-parser.bst
- core-deps/vala.bst
- base.bst
