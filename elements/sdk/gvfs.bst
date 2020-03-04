kind: meson
sources:
- kind: tar
  url: gnome_downloads:gvfs/1.43/gvfs-1.43.92.tar.xz
  ref: 18fc490d6331b14a4d332c8403ed9b39fcf590e9de28540530e415d0528dd3dd
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dsystemduserunitdir=no
    -Dtmpfilesdir=no
    -Dinstalled_tests=true
    -Ddbus_service_dir=/usr/share/dbus-1/services
    -Dadmin=false
    -Dafc=false
    -Dafp=false
    -Darchive=false
    -Dcdda=false
    -Ddnssd=false
    -Dgoa=false
    -Dgoogle=false
    -Dgphoto2=false
    -Dhttp=true
    -Dmtp=false
    -Dnfs=false
    -Dsftp=false
    -Dsmb=false
    -Dudisks2=false
    -Dbluray=false
    -Dfuse=false
    -Dgcr=false
    -Dgcrypt=false
    -Dgudev=false
    -Dkeyring=false
    -Dlogind=false
    -Dlibusb=false
