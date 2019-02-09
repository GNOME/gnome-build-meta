kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-devel-docs
  track: master
depends:
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
