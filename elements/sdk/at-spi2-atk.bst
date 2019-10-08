kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-atk/2.34/at-spi2-atk-2.34.1.tar.xz
depends:
- sdk/at-spi2-core.bst
- sdk/atk.bst
- sdk/glib.bst
- filename: components/libxml2.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
