kind: autotools
sources:
- kind: tar
  url: http://gstreamer.freedesktop.org/src/gst-libav/gst-libav-1.14.2.tar.xz
  ref: 8a351c39c5cfc2bbd31ca434ec4a290a730a26efbdea962fdd8306dce5c576de
depends:
- sdk/gst-plugins-base.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
