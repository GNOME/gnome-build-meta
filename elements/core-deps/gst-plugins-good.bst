kind: meson
sources:
- url: http://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-1.14.0.tar.xz
  kind: tar
  ref: 6afa35747d528d3ab4ed8f5eac13f7235d7d28100d6a24dd78f81ec7c0d04688
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/gst-plugins-base.bst
- core-deps/libgudev.bst
- core-deps/meson.bst
- base.bst
