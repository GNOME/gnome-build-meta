kind: autotools
sources:
- kind: tar
  url: https://ftp.gimp.org/pub/gegl/0.4/gegl-0.4.22.tar.xz
  ref: 1888ec41dfd19fe28273795c2209efc1a542be742691561816683990dc642c61
depends:
- core-deps/babl.bst
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
  conf-local: --without-graphviz --without-libavformat --without-jasper
