kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:libgsf
  track: master
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --without-bonobo --without-gnome-vfs --enable-introspection
