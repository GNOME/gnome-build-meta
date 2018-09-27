kind: autotools
sources:
- kind: tar
  url: https://ftp.gimp.org/pub/gegl/0.4/gegl-0.4.8.tar.bz2
  ref: 719468eec56ac5b191626a0cb6238f3abe9117e80594890c246acdc89183ae49
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
