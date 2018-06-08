kind: autotools
sources:
- kind: tar
  url: https://dbus.freedesktop.org/releases/dbus-glib/dbus-glib-0.110.tar.gz
depends:
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
