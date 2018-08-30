kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gvfs/1.37/gvfs-1.37.92.tar.xz
  ref: d9e3b1c75cf00ba2f23fef57b273cdf1a5a823f102b88bd1f0c413c0b63257b0
depends:
- sdk/glib.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  meson-local: -Dsystemduserunitdir=no -Dtmpfilesdir=no -Dinstalled_tests=true -Ddbus_service_dir=/usr/share/dbus-1/services
    -Dadmin=false -Dafc=false -Dafp=false -Darchive=false -Dcdda=false -Ddnssd=false
    -Dgoa=false -Dgoogle=false -Dgphoto2=false -Dhttp=false -Dmtp=false -Dnfs=false
    -Dsftp=false -Dsmb=false -Dudisks2=false -Dbluray=false -Dfuse=false -Dgcr=false
    -Dgcrypt=false -Dgudev=false -Dkeyring=false -Dlogind=false -Dlibusb=false
