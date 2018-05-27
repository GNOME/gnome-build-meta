kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:yelp-xsl
  track: master
depends:
- filename: desktop/itstools.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
