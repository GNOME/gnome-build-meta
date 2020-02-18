kind: meson
sources:
- kind: tar
  url: gnome_downloads:gvfs/1.42/gvfs-1.42.2.tar.xz
  ref: b57af97573bd295aa50037eed29c6ba7a36188230c515e007c3018855a5cf949
depends:
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/libsoup.bst
- filename: components/dbus.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dsystemduserunitdir=no -Dtmpfilesdir=no -Dinstalled_tests=true -Ddbus_service_dir=/usr/share/dbus-1/services
    -Dadmin=false -Dafc=false -Dafp=false -Darchive=false -Dcdda=false -Ddnssd=false
    -Dgoa=false -Dgoogle=false -Dgphoto2=false -Dhttp=true -Dmtp=false -Dnfs=false
    -Dsftp=false -Dsmb=false -Dudisks2=false -Dbluray=false -Dfuse=false -Dgcr=false
    -Dgcrypt=false -Dgudev=false -Dkeyring=false -Dlogind=false -Dlibusb=false
