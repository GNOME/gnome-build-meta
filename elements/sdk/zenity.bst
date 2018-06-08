kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/zenity
  track: master
depends:
- sdk/gnome-common.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
