kind: meson
sources:
- kind: git
  url: git_gnome_org:at-spi2-atk
  track: master
depends:
- core-deps/atk.bst
- core-deps/at-spi2-core.bst
- core-deps/glib.bst
- core-deps/meson.bst
- base.bst
