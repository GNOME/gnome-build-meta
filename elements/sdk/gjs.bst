kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gjs/1.54/gjs-1.54.2.tar.xz
  ref: 6f2ddbff4557879b1ea8b0ee710d27201c3a5ae12dc19b88238a6eaaa1ad865f
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
