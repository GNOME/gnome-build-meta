kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/at-spi2-atk
  track: master
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
