kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/at-spi2-atk.git
  track: master
depends:
- sdk/at-spi2-core.bst
- sdk/atk.bst
- sdk/glib.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
