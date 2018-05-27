kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/clutter-gst
  track: clutter-gst-3.0
depends:
- core-deps/clutter.bst
- core-deps/cogl.bst
- core-deps/gobject-introspection.bst
- core-deps/gst-plugins-base.bst
- core-deps/gstreamer.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
