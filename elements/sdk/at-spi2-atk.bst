kind: meson
sources:
- kind: git
  url: git_gnome_org:at-spi2-atk
  track: master
depends:
- sdk/at-spi2-core.bst
- sdk/atk.bst
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
