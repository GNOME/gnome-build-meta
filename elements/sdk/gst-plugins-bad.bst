kind: meson
sources:
- kind: tar
  url: http://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-1.14.2.tar.xz
  ref: 34fab7da70994465a64468330b2168a4a0ed90a7de7e4c499b6d127c6c1b1eaf
depends:
- sdk/gst-plugins-base.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
