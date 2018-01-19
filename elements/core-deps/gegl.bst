kind: autotools
sources:
- kind: git
  url: git_gnome_org:gegl
  track: master
depends:
- core-deps/babl.bst
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/json-glib.bst
- core-deps/librsvg.bst
- core-deps/pango.bst
- base.bst
variables:
  conf-local: --without-libavformat --without-jasper
