kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-user-share.git
  track: master
depends:
- core/gnome-bluetooth.bst
- core/nautilus.bst
- sdk/gtk+-3.bst
- filename: sdk/yelp-tools.bst
  type: build
- filename: desktop/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
