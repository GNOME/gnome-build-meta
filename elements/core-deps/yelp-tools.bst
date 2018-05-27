kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:yelp-tools
  track: master
depends:
- core-deps/yelp-xsl.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
