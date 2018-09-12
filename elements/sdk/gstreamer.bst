kind: meson
sources:
- kind: tar
  url: http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-1.14.2.tar.xz
  ref: 4bd6127299f3f29379046bbd58a526e6353b569e0e72f7b4df2ae70df6882e09
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

