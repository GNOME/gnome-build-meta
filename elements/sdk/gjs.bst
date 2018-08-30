kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gjs/1.53/gjs-1.53.92.tar.xz
  ref: 5dc3376c4977fce161dde602876844f572aef4d67bad1e1702edf681ce468e8f
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
