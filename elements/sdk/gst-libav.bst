kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-libav
  track: master
depends:
- sdk/gst-plugins-base.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
