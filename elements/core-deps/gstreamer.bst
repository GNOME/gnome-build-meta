kind: meson
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gstreamer
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Ddisable_gtkdoc=true
