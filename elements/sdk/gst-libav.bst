kind: filter
depends:
- filename: desktop/gstreamer-libav.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: desktop/orc.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: sdk/gst-plugins-base.bst
  type: runtime
