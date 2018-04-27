kind: meson
sources:
- kind: git
  url: git_gnome_org:at-spi2-atk
  track: master
depends:
- sdk/atk.bst
- sdk/at-spi2-core.bst
- sdk/glib.bst
- base.bst
