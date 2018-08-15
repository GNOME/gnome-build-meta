depends:
- core-deps/gobject-introspection.bst
- core-deps/mozjs60.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 45477c2eb03e6eedbed2d3dc75ea0e7801d117c84fa3cb20b06cd01170268e37
  url: https://download.gnome.org/sources/gjs/1.53/gjs-1.53.90.tar.xz
variables:
  conf-local: --disable-installed-tests
