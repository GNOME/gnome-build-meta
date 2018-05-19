kind: autotools
sources:
- kind: git
  url: git_gnome_org:ghex
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
