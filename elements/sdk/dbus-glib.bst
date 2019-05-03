kind: autotools
sources:
- kind: tar
  url: https://dbus.freedesktop.org/releases/dbus-glib/dbus-glib-0.110.tar.gz
depends:
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
