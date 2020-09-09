kind: meson
sources:
- kind: tar
  url: gnome_downloads:gvfs/1.45/gvfs-1.45.92.tar.xz
  ref: 87bb7ebf94c16af843085aa93728f060bd08c28b15e9d38572166f10068cc538
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
