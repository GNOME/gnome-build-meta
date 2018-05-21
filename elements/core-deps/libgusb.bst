kind: meson
sources:
- kind: git
  url: github_com:hughsie/libgusb.git
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/libusb.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
