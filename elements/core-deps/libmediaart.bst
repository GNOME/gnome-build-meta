kind: autotools
sources:
- kind: git
  url: git_gnome_org:libmediaart
  track: master
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gtk-doc.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --disable-qt
