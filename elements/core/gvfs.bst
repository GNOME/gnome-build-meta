kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gvfs/1.37/gvfs-1.37.4.tar.xz
  ref: fdc7dc569f0e1f05b40ebe9ca478da1bdcf42579d316a3ab62f630d8e1cc8a17
depends:
- core-deps/avahi.bst
- core-deps/fuse.bst
- core-deps/gcr.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libbluray.bst
- core-deps/libcdio-paranoia.bst
- core-deps/libgdata.bst
- core-deps/libgphoto2.bst
- core-deps/libgudev.bst
- core-deps/libimobiledevice.bst
- core-deps/libmtp.bst
- core-deps/libnfs.bst
- core-deps/libsecret.bst
- core-deps/libsoup.bst
- core-deps/libusb.bst
- core-deps/polkit.bst
- core-deps/samba.bst
- core-deps/udisks2.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dsystemduserunitdir=no -Dtmpfilesdir=no -Dinstalled_tests=true -Ddbus_service_dir=/usr/share/dbus-1/services
