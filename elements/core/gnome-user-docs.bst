kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-user-docs
  track: master
depends:
- core-deps/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
