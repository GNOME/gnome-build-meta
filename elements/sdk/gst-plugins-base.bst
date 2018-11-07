kind: filter
depends:
- filename: desktop/gstreamer-plugins-base.bst
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
- filename: desktop/mesa.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: sdk/pango.bst
  type: runtime
- filename: desktop/xorg-lib-xv.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: base/libogg.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: base/libtheora.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: base/libvorbis.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: base/opus.bst
  junction: freedesktop-sdk.bst
  type: runtime
