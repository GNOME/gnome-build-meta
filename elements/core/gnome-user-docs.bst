kind: autotools
sources:
- kind: git_tag
  url: gnome:gnome-user-docs.git
  track: master
  ref: 44.0-21-gac53c7d872ed2b7d08e2206b054d63066a636913
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
