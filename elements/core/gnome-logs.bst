kind: autotools
sources:
- url: https://download.gnome.org/sources/gnome-logs/3.27/gnome-logs-3.27.90.tar.xz
  kind: tar
  ref: dd304e7f581a3678e3c4bc56093361be3895a25aedd30a5f0d43477e9534f522
depends:
- core-deps/appstream-glib.bst
- core-deps/gtk+-3.bst
- core-deps/yelp-tools.bst
- core/gsettings-desktop-schemas.bst
- base.bst
