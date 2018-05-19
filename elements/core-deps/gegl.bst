kind: autotools
sources:
- kind: git
  url: git_gnome_org:gegl
  track: master
depends:
- core-deps/babl.bst
- core-deps/graphviz.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/librsvg.bst
- sdk/pango.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --without-libavformat --without-jasper
