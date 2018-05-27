kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:zenity
  track: master
depends:
- core-deps/gtk+-3.bst
- core-deps/gnome-common.bst
- core-deps/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
