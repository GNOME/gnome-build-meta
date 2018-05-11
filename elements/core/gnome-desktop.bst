kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-desktop/3.28/gnome-desktop-3.28.2.tar.xz
  ref: 605087bff17c61bc167ccb5a61ed4d06eab922fcce384576ed2a3577214c8330
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/iso-codes.bst
- core-deps/yelp-tools.bst
- core/gsettings-desktop-schemas.bst
- base.bst
variables:
  conf-local: --with-gnome-distributor=JHBuild
