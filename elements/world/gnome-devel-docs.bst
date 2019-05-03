kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-devel-docs.git
  track: master
depends:
- sdk/yelp-tools.bst
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
