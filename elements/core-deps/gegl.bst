kind: autotools
sources:
- url: http://ftp.gimp.org/pub/gegl/0.3/gegl-0.3.30.tar.bz2
  kind: tar
  ref: f8b4a93ad2c5187efcc7d9a665ef626a362587eb701eebccf21b13616791e551
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
