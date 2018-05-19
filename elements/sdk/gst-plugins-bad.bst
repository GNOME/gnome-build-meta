kind: meson
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-plugins-bad
  track: master
depends:
- sdk/gst-plugins-base.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
