kind: autotools
sources:
- kind: git_repo
  url: gnome:yelp-xsl.git
  track: master
  ref: 42.1-11-g97c4ef4dd71a5708c974003666a78e5988f31f9e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
