kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gjs/1.55/gjs-1.55.1.tar.xz
depends:
- sdk/gobject-introspection.bst
- sdk/mozjs60.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: --enable-installed-tests
