kind: meson
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gstreamer
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
