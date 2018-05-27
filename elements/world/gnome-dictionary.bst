kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-dictionary
  track: master
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
