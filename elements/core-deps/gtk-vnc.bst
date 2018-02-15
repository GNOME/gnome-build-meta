kind: autotools
sources:
- url: https://download.gnome.org/sources/gtk-vnc/0.7/gtk-vnc-0.7.1.tar.xz
  kind: tar
  ref: f34baa696615ef67666e8465b4d0ac563355e999a77d2cc42ad4625a24f7aab1
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --with-gtk=3.0 --enable-vala
