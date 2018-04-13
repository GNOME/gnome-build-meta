kind: autotools
sources:
- url: https://download.gnome.org/sources/gnome-desktop/3.28/gnome-desktop-3.28.1.tar.xz
  kind: tar
  ref: 78a397a2be47586e6dc075d6a7fc5659aae3d10713d76994ce1b46086e7ecb9a
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
