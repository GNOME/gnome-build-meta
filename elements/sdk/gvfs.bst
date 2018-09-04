kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gvfs/1.38/gvfs-1.38.0.tar.xz
  ref: e084ad7722ee2a03db289fda71786eb9eb1f56c718436293fa59f1e781c6db6a
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
