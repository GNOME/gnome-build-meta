kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/yelp-tools.git
  track: master
depends:
- sdk/yelp-xsl.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
