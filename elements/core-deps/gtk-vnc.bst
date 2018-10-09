kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gtk-vnc/0.9/gtk-vnc-0.9.0.tar.xz
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gnome-common.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-gtk=3.0 --enable-vala --disable-werror
