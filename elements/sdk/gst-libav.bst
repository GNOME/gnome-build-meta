kind: autotools
sources:
- kind: tar
  url: https://gstreamer.freedesktop.org/src/gst-libav/gst-libav-1.14.4.tar.xz
depends:
- sdk/gst-plugins-base.bst
- sdk/ffmpeg.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: --with-system-libav
