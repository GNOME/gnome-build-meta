kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-user-docs
  track: master
depends:
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
