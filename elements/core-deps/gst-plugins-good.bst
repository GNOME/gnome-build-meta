kind: meson
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-plugins-good
  track: master
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/gst-plugins-base.bst
- core-deps/libgudev.bst
- base.bst
