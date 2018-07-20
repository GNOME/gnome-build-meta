kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgsf/1.14/libgsf-1.14.43.tar.xz
  ref: 12944e3d6d9a6e4071e89dbf58348e1e93544f5f9266dd1a107a28d8001cee16
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --without-bonobo --without-gnome-vfs --enable-introspection
