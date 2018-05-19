kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgsf
  track: master
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --without-bonobo --without-gnome-vfs --enable-introspection
