kind: filter

depends:
- filename: components/gstreamer-plugins-base.bst
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
- filename: sdk/pango.bst
  type: runtime
- filename: components/xorg-lib-xv.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/libogg.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/libtheora.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/libvorbis.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/opus.bst
  junction: freedesktop-sdk.bst
  type: runtime
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/alsa-lib.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/sdl2.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/mesa-headers.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: sdk/gtk+-3.bst
  type: runtime
- filename: sdk/gdk-pixbuf.bst
  type: runtime
