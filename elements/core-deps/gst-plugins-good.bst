kind: meson
sources:
- kind: tar
  url: http://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-1.14.2.tar.xz
  ref: c0575e2811860bfff59b865b8d125153859a01f0615fa41e279b64d88d25caad
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/gst-plugins-base.bst
- core-deps/libgudev.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
