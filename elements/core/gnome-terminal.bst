kind: autotools
sources:
- url: https://download.gnome.org/sources/gnome-terminal/3.28/gnome-terminal-3.28.1.tar.xz
  kind: tar
  ref: f7a6a0189a0b0fbf7845d092e5444fc6303225c2d9ef87bfaae3f80845801cc3
depends:
- core-deps/appstream-glib.bst
- core-deps/dconf.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/librsvg.bst
- core-deps/vte.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/gnome-shell.bst
- core/gsettings-desktop-schemas.bst
- core/nautilus.bst
- base.bst
variables:
  conf-local: --disable-migration
