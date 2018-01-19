kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgsf
  track: master
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- base.bst
variables:
  conf-local: --without-bonobo --without-gnome-vfs --enable-introspection
