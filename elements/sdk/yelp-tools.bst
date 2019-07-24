kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/yelp-tools.git
  track: master
depends:
- sdk/yelp-xsl.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
