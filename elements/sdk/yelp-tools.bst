kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/yelp-tools.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:bootstrap-import.bst
