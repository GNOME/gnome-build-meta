kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/at-spi2-atk/2.30/at-spi2-atk-2.30.0.tar.xz
depends:
- sdk/at-spi2-core.bst
- sdk/atk.bst
- sdk/glib.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
