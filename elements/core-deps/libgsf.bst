kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgsf/1.14/libgsf-1.14.44.tar.xz
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --without-bonobo --without-gnome-vfs --enable-introspection
