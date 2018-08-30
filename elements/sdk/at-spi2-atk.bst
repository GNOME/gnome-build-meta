kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/at-spi2-atk/2.29/at-spi2-atk-2.29.1.tar.xz
  ref: c2f152496f09984ca204b11dc9390be5807b772a67dcce5564e18904eb26c93c
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
