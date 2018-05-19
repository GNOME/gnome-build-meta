kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/file-roller
  track: master
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
