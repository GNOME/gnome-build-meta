kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gjs/1.54/gjs-1.54.3.tar.xz
  ref: 76b30dcc3ce9836c053aee531aa9f1d9d3f94b8503adf0a5a7bd176c492ba6b1
depends:
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/mozjs60.bst
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
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
