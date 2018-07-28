kind: meson
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-plugins-base
  track: master
depends:
- core-deps/gstreamer.bst
- core-deps/gtk+-3.bst
- core-deps/libgudev.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
