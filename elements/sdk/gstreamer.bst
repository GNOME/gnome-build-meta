kind: meson
sources:
- kind: tar
  url: https://gstreamer.freedesktop.org/src/gstreamer/gstreamer-1.14.5.tar.xz
  ref: e40888752883177e97b2d90cd68591f87ccd213dc0178ff721d80a4cdaad34b5
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

