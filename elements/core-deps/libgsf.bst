kind: autotools
sources:
- url: https://download.gnome.org/sources/libgsf/1.14/libgsf-1.14.42.tar.xz
  kind: tar
  ref: 29fffb87b278b3fb1b8ae9138c3b4529c1fce664f1f94297c146a8563df80dc2
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- base.bst
variables:
  conf-local: --without-bonobo --without-gnome-vfs --enable-introspection
