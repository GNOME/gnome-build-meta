kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/clutter-gtk.git
  track: master
depends:
- sdk/clutter.bst
- sdk/gtk+-3.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
