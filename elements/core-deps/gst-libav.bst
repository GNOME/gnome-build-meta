kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-libav
  track: master
depends:
- core-deps/gst-plugins-base.bst
- base.bst
