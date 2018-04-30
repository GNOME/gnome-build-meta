kind: meson
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gstreamer
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- base.bst
variables:
  meson-local: -Ddisable_gtkdoc=true
