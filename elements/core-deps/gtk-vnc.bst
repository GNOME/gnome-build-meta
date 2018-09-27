kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gtk-vnc/0.9/gtk-vnc-0.9.0.tar.xz
  ref: 3a9a88426809a5df2c14353cd9839b8c8163438cb708b31d8048c79d180fcab7
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
