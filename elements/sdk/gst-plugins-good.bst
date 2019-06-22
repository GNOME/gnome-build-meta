kind: filter
depends:
- filename: desktop/gstreamer-plugins-good.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: desktop/orc.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: desktop/lame.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: desktop/libpulse.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: sdk/libsoup.bst
  type: runtime
- filename: desktop/mpg123.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: sdk/gtk+-3.bst
  type: runtime
- filename: sdk/gdk-pixbuf.bst
  type: runtime
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: sdk/gst-plugins-base.bst
  type: runtime
- filename: base/libflac.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: base/wavpack.bst
  junction: freedesktop-sdk.bst
  type: runtime
