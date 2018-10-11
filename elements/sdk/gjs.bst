kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gjs/1.54/gjs-1.54.1.tar.xz
  ref: b197fe5812a0449f73f7a93ac85a4ee4941916bcf071ea39a67ddd231dc868bc
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
