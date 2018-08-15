depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 68bede10037164764992970b4cb57cd6add6986a846d04657af9d5fac774ffde
  url: https://download.gnome.org/sources/libgsf/1.14/libgsf-1.14.44.tar.xz
variables:
  conf-local: --without-bonobo --without-gnome-vfs --enable-introspection
