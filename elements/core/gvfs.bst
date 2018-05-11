kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gvfs/1.36/gvfs-1.36.2.tar.xz
  ref: c4e279a33dd9cd208135e8bfc4788ceaf264c61a24a85255f6696a934a0101f7
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
