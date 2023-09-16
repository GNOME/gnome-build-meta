kind: autotools
sources:
- kind: git_repo
  url: gnome:yelp-xsl.git
  track: master
  ref: 42.1-8-g2d2b175a89d856d383335822a7e0617f0bbc6ad9
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
