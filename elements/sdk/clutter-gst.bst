kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/clutter-gst
  track: clutter-gst-3.0
depends:
- sdk/clutter.bst
- sdk/cogl.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- sdk/gstreamer.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
