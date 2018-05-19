kind: autotools
sources:
- kind: git
  url: git_gnome_org:yelp-tools
  track: master
depends:
- sdk/yelp-xsl.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
