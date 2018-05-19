kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-devel-docs
  track: master
depends:
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
