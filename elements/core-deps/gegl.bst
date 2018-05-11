kind: autotools
sources:
- kind: tar
  url: http://ftp.gimp.org/pub/gegl/0.4/gegl-0.4.0.tar.bz2
  ref: d04d2bfa0ff5a4bcfe7566f7418929a9c80f0109fa248ea4ff19538b3e99f0c5
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
