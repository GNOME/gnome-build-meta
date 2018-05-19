kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-dictionary
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
