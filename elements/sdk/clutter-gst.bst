kind: autotools
sources:
- kind: git
  url: git_gnome_org:clutter-gst
  track: clutter-gst-3.0
depends:
- sdk/clutter.bst
- sdk/cogl.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- sdk/gstreamer.bst
- base.bst
