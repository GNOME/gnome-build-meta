kind: meson
sources:
- kind: tar
  url: https://people.freedesktop.org/~hughsient/releases/libgusb-0.3.0.tar.xz
depends:
- core-deps/libusb.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
