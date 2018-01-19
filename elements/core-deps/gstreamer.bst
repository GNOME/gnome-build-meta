kind: meson
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gstreamer
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/meson.bst
- base.bst
