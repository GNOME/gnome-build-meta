kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/libdazzle/3.31/libdazzle-3.31.1.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
