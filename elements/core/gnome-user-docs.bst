kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-user-docs
  track: master
depends:
- sdk/yelp-tools.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
