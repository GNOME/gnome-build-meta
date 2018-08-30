kind: meson
sources:
- kind: tar
  url: http://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-1.14.2.tar.xz
  ref: c0575e2811860bfff59b865b8d125153859a01f0615fa41e279b64d88d25caad
depends:
- sdk/gdk-pixbuf.bst
- sdk/gst-plugins-base.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
