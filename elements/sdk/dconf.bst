kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/dconf
  track: master
depends:
- sdk/glib.bst
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
