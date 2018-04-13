kind: autotools
sources:
- url: https://download.gnome.org/sources/gnome-logs/3.28/gnome-logs-3.28.0.tar.xz
  kind: tar
  ref: cbe03758b7936a2c54470b5dd13ba6c2d972c23107563949af560b76fe9a7c48
depends:
- core-deps/appstream-glib.bst
- core-deps/gtk+-3.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/gsettings-desktop-schemas.bst
- base.bst
