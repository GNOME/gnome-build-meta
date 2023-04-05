kind: autotools
sources:
- kind: git_tag
  url: gnome:yelp-xsl.git
  track: master
  ref: 42.1-5-g54b6d4619030072b88a6911edfa1d320c4e6309e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
