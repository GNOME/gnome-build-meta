kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-backgrounds.git
  track: master
depends:
- sdk/glib.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
