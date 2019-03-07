kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/yelp-tools.git
  track: master
depends:
- sdk/yelp-xsl.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
