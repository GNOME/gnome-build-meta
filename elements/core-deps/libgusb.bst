kind: meson
sources:
- kind: git
  url: github_com:hughsie/libgusb.git
  track: master
depends:
- core-deps/libusb.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
