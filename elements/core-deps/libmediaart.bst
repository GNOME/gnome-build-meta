kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libmediaart
  track: master
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-qt
