kind: filter

depends:
- filename: components/gstreamer-vaapi.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/gstreamer.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/gstreamer-plugins-bad.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/libdrm.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/libva.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/wayland.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/xorg-lib-x11.bst
  junction: freedesktop-sdk.bst
  type: runtime
