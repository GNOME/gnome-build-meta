kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/at-spi2-core/2.30/at-spi2-core-2.30.0.tar.xz
  ref: 0175f5393d19da51f4c11462cba4ba6ef3fa042abf1611a70bdfed586b7bfb2b
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
