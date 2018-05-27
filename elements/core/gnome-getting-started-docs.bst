kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:gnome-getting-started-docs
  track: master
depends:
- core-deps/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
