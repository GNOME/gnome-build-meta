kind: meson
sources:
- kind: git
  url: github_com:hughsie/libgusb.git
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libusb.bst
- sdk/vala.bst
- base.bst
