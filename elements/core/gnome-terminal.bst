kind: autotools
sources:
- url: https://download.gnome.org/sources/gnome-terminal/3.27/gnome-terminal-3.27.90.tar.xz
  kind: tar
  ref: 0f57f9bd31a6708660c1987ee59f9a612927cdaf7af022d3a04ad1e52073430d
depends:
- core-deps/appstream-glib.bst
- core-deps/dconf.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/librsvg.bst
- core-deps/vte.bst
- core-deps/yelp-tools.bst
- core/gnome-shell.bst
- core/gsettings-desktop-schemas.bst
- core/nautilus.bst
- base.bst
variables:
  conf-local: --disable-migration
