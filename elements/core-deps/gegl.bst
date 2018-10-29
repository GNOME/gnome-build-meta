kind: autotools
sources:
- kind: tar
  url: https://ftp.gimp.org/pub/gegl/0.4/gegl-0.4.12.tar.bz2
  ref: e967293eabe89257e1d511bf68435fbfd44e6e0f9ef51b86cc50781f09eb5852
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
