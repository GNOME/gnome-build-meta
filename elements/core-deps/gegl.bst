kind: autotools
sources:
- kind: tar
  url: https://ftp.gimp.org/pub/gegl/0.4/gegl-0.4.16.tar.bz2
depends:
- core-deps/babl.bst
- core-deps/graphviz.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/librsvg.bst
- sdk/pango.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --without-libavformat --without-jasper
