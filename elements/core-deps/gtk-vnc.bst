depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/gtk+-3.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 561647e093919ab0b38c4b1ea39813d5b5dc10ef290e689f4caef596a707dd57
  url: https://download.gnome.org/sources/gtk-vnc/0.8/gtk-vnc-0.8.0.tar.xz
variables:
  conf-local: --with-gtk=3.0 --enable-vala --disable-werror
