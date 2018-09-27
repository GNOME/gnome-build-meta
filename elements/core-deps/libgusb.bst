kind: meson
sources:
- kind: tar
  url: https://people.freedesktop.org/~hughsient/releases/libgusb-0.3.0.tar.xz
  ref: d8e7950f99b6ae4c3e9b8c65f3692b9635289e6cff8de40c4af41b2e9b348edc
depends:
- core-deps/libusb.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
