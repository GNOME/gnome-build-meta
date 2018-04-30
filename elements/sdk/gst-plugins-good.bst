kind: meson
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-plugins-good
  track: master
depends:
- sdk/gdk-pixbuf.bst
- sdk/gst-plugins-base.bst
- sdk/libgudev.bst
- base.bst
