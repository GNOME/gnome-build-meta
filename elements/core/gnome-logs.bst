kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-logs/3.28/gnome-logs-3.28.2.tar.xz
  ref: e0ad07b66f77d581cc7e4e76da5d4131f9244fb50559de9315bff59c4be11563
depends:
- core-deps/appstream-glib.bst
- core-deps/gtk+-3.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/gsettings-desktop-schemas.bst
- base.bst
