kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/at-spi2-atk/2.30/at-spi2-atk-2.30.0.tar.xz
  ref: e2e1571004ea7b105c969473ce455a95be4038fb2541471714aeb33a26da8a9a
depends:
- sdk/at-spi2-core.bst
- sdk/atk.bst
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
