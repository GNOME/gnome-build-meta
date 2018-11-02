kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-backgrounds
  track: master
depends:
- sdk/glib.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
