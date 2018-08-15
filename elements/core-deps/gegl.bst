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
kind: autotools
sources:
- kind: tar
  ref: f397eb43f6b8ec387d177b21a0002070c78c38a94a1a0ca6575226f081519ae5
  url: http://ftp.gimp.org/pub/gegl/0.4/gegl-0.4.6.tar.bz2
variables:
  conf-local: --without-libavformat --without-jasper
