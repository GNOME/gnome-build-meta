kind: meson
sources:
- kind: tar
  url: http://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-1.14.2.tar.xz
  ref: a4b7e80ba869f599307449b17c9e00b5d1e94d3ba1d8a1a386b8770b2ef01c7c
depends:
- core-deps/gstreamer.bst
- core-deps/gtk+-3.bst
- core-deps/libgudev.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Ddisable_gtkdoc=true
