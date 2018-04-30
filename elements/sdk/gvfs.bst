kind: meson
sources:
- kind: git
  url: git_gnome_org:gvfs
  track: master
depends:
- sdk/avahi.bst
- sdk/fuse.bst
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- sdk/libbluray.bst
- sdk/libcdio-paranoia.bst
- sdk/libgdata.bst
- sdk/libgphoto2.bst
- sdk/libgudev.bst
- sdk/libimobiledevice.bst
- sdk/libmtp.bst
- sdk/libnfs.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/libusb.bst
- sdk/polkit.bst
- sdk/samba.bst
- sdk/udisks2.bst
- base.bst
variables:
  meson-local: -Dsystemduserunitdir=no -Dtmpfilesdir=no -Dinstalled_tests=true -Ddbus_service_dir=/usr/share/dbus-1/services
