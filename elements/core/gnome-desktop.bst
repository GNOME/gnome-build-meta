kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-desktop
  track: master
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/m4-common.bst
- core-deps/yelp-tools.bst
- core/gsettings-desktop-schemas.bst
- base.bst
variables:
  conf-local: --with-gnome-distributor=JHBuild
