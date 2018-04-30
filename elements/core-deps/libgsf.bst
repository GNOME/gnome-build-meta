kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgsf
  track: master
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- base.bst
variables:
  conf-local: --without-bonobo --without-gnome-vfs --enable-introspection
