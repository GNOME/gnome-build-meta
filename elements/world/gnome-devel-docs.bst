kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:gnome-devel-docs
  track: master
depends:
- core-deps/gnome-common.bst
- core-deps/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
