kind: filter
depends:
- filename: components/gstreamer-libav.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/orc.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/gstreamer.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: sdk/gst-plugins-base.bst
  type: runtime
