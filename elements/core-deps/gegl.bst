kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gegl.git
  track: master
depends:
- core-deps/babl.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/librsvg.bst
- sdk/pango.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    -Dgraphviz=disabled
    -Dlibav=disabled
    -Djasper=disabled
