kind: meson
sources:
- kind: tar
  url: gnome_downloads:at-spi2-atk/2.34/at-spi2-atk-2.34.1.tar.xz
  ref: 776df930748fde71c128be6c366a987b98b6ee66d508ed9c8db2355bf4b9cc16
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
