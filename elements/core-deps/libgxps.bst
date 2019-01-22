kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgxps/0.3/libgxps-0.3.1.tar.xz
  ref: 1a939fc8fcea9471b7eca46b1ac90cff89a30d26f65c7c9a375a4bf91223fa94
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
