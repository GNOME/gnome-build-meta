kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.32/at-spi2-core-2.32.1.tar.xz
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
