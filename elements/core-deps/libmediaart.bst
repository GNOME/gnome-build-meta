kind: autotools
sources:
- kind: git
  url: git_gnome_org:libmediaart
  track: master
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- base.bst
variables:
  conf-local: --disable-qt
