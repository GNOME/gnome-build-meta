kind: autotools
sources:
- url: https://download.gnome.org/sources/gnome-desktop/3.27/gnome-desktop-3.27.90.tar.xz
  kind: tar
  ref: 3138683103db23985448eae05f3dbb379ca4a81cf7b1ba1846d7a056619d4283
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
