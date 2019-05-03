kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gegl.git
  track: master
depends:
- core-deps/babl.bst
- core-deps/graphviz.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/librsvg.bst
- sdk/pango.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --without-libavformat --without-jasper
