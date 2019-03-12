kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/at-spi2-core/2.32/at-spi2-core-2.32.0.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
