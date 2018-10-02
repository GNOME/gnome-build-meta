kind: meson
sources:
- kind: tar
  url: https://gstreamer.freedesktop.org/src/gstreamer/gstreamer-1.14.3.tar.xz
  ref: 13ae530eb1d4566c3aa0cff1bbb8e64c643065bb12e2e7c707f311ab4a390456
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

