kind: meson
sources:
- kind: tar
  url: https://gstreamer.freedesktop.org/src/gstreamer/gstreamer-1.14.4.tar.xz
  ref: f94f6696c5f05a3b3a9183e39c5f5c0b779f75a04c0efa497e7920afa985ffc7
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  meson-local: |
    -Ddisable_examples=true \
    -Ddisable_unwind=true

