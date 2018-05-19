kind: autotools
sources:
- kind: git
  url: git_gnome_org:zenity
  track: master
depends:
- sdk/gnome-common.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
