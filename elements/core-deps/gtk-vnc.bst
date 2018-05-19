kind: autotools
sources:
- kind: git
  url: git_gnome_org:gtk-vnc
  track: master
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
