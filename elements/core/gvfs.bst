kind: meson
sources:
- url: https://download.gnome.org/sources/gvfs/1.35/gvfs-1.35.90.tar.xz
  kind: tar
  ref: f7f5dfebeb77779b56bbb476da1a02f7ca2f30bbea34041a8c9faebc17ae6d7b
depends:
- core-deps/gcr.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libgdata.bst
- core-deps/libgudev.bst
- core-deps/libsecret.bst
- core-deps/libsoup.bst
- core-deps/meson.bst
- base.bst
variables:
  meson-local: -Dsystemduserunitdir=no -Dtmpfilesdir=no -Dinstalled_tests=true -Ddbus_service_dir=/usr/share/dbus-1/services
