kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-desktop
  track: master
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- base.bst
variables:
  conf-local: --with-gnome-distributor=gnome-build-meta
