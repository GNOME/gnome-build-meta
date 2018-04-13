kind: meson
sources:
- url: https://download.gnome.org/sources/gvfs/1.36/gvfs-1.36.1.tar.xz
  kind: tar
  ref: 3840dff386c2c8a445337bea4ade0eb71339efaff8602767659fa2896792f026
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
