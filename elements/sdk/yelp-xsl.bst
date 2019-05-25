kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/yelp-xsl.git
  track: master
depends:
- filename: desktop/itstools.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
