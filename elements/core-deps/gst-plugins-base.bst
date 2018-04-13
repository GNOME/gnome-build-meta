kind: meson
sources:
- url: http://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-1.14.0.tar.xz
  kind: tar
  ref: 7e904660ff56e02b036cf7fdfb77a50a540828ca9d2614d69ba931772e5b6940
depends:
- core-deps/gstreamer.bst
- core-deps/gtk+-3.bst
- core-deps/iso-codes.bst
- core-deps/libgudev.bst
- core-deps/meson.bst
- base.bst
variables:
  meson-local: -Ddisable_gtkdoc=true
