kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gjs/1.54/gjs-1.54.0.tar.xz
  ref: e22c63f4dbf243d7a5a6660f6443ca3e5768695a48fc9fdf078bce7cf7aa657d
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
