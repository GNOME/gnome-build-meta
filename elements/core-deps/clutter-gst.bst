kind: autotools
sources:
- url: https://download.gnome.org/sources/clutter-gst/3.0/clutter-gst-3.0.24.tar.xz
  kind: tar
  ref: e9f1c87d8f4c47062e952fb8008704f8942cf2d6f290688f3f7d13e83578cc6c
depends:
- core-deps/clutter.bst
- core-deps/cogl.bst
- core-deps/gobject-introspection.bst
- core-deps/gst-plugins-base.bst
- core-deps/gstreamer.bst
- base.bst
