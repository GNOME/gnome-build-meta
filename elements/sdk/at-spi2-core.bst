kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-core/2.34/at-spi2-core-2.34.0.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: components/dbus.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
