kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:at-spi2-atk
  track: master
depends:
- core-deps/atk.bst
- core-deps/at-spi2-core.bst
- core-deps/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
