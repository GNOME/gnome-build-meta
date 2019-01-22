kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgsf/1.14/libgsf-1.14.45.tar.xz
  ref: 68bede10037164764992970b4cb57cd6add6986a846d04657af9d5fac774ffde
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --without-bonobo --without-gnome-vfs --enable-introspection
