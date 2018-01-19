kind: meson
sources:
- kind: git
  url: git_gnome_org:at-spi2-atk
  track: master
depends:
- core-deps/atk.bst
- core-deps/glib.bst
- core-deps/meson.bst
- core/at-spi2-core.bst
- base.bst
