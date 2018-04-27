kind: autotools
sources:
- kind: git
  url: git_gnome_org:gegl
  track: master
depends:
- core-deps/babl.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/librsvg.bst
- sdk/pango.bst
- base.bst
variables:
  conf-local: --without-libavformat --without-jasper
