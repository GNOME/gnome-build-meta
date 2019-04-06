kind: filter

depends:
- filename: desktop/gstreamer-vaapi.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: desktop/gstreamer-plugins-bad.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: desktop/libdrm.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: desktop/libva.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: desktop/mesa.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: desktop/xorg-lib-x11.bst
  junction: freedesktop-sdk.bst
  type: runtime
