kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-user-docs.git
  track: master
depends:
- sdk/yelp-tools.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
