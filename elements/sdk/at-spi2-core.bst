kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/at-spi2-core/2.30/at-spi2-core-2.30.0.tar.xz
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
