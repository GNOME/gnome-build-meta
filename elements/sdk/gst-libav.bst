kind: autotools
sources:
- kind: tar
  url: https://gstreamer.freedesktop.org/src/gst-libav/gst-libav-1.14.3.tar.xz
  ref: 9b03529bb45785ad1b6b1f4856c52a832ad5fc472285ce49174439e8015ab677
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
