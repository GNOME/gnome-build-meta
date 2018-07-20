kind: autotools
sources:
- kind: tar
  url: http://ftp.gimp.org/pub/gegl/0.4/gegl-0.4.4.tar.bz2
  ref: f8cb45da736131fe29582b74cf6851102ae013bf99c77413a8bcb02e92e57890
depends:
- core-deps/babl.bst
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/graphviz.bst
- core-deps/json-glib.bst
- core-deps/librsvg.bst
- core-deps/pango.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --without-libavformat --without-jasper
