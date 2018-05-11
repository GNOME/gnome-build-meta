kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gtk-vnc/0.7/gtk-vnc-0.7.2.tar.xz
  ref: f893f32b1ef6d09dd23cda39b8a2567be7c2aebda58026288e1362f042e20808
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --with-gtk=3.0 --enable-vala
