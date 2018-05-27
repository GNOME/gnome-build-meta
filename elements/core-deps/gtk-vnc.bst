kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:gtk-vnc
  track: master
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/gtk+-3.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-gtk=3.0 --enable-vala --disable-werror
