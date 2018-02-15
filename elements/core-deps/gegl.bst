kind: autotools
sources:
- url: http://ftp.gimp.org/pub/gegl/0.3/gegl-0.3.28.tar.bz2
  kind: tar
  ref: 152f87604a5a191775329dfb63764efa1d5c32403d1438da68e242f96b7d23ff
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
