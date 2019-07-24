kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/yelp-xsl.git
  track: master
depends:
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
