depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: 2d88b7b01ada4b07ac5ad940e88d598f9d9db21174f40d2032696162e8b36f79
  url: https://download.gnome.org/sources/libdazzle/3.29/libdazzle-3.29.4.tar.xz
