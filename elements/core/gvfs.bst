kind: meson
sources:
- kind: git
  url: git_gnome_org:gvfs
  track: master
depends:
- core-deps/fuse.bst
- core-deps/gcr.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libgdata.bst
- core-deps/libgudev.bst
- core-deps/libsecret.bst
- core-deps/libsoup.bst
- core-deps/meson.bst
- core-deps/polkit.bst
- core-deps/udisks2.bst
- base.bst
variables:
  meson-local: -Dsystemduserunitdir=no -Dtmpfilesdir=no -Dinstalled_tests=true -Ddbus_service_dir=/usr/share/dbus-1/services
