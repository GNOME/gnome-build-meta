kind: autotools
sources:
- kind: git_tag
  url: gnome:yelp-xsl.git
  track: master
  ref: 42.1-4-g09ffd6f4f22a51b80682ed89939d43d627378e66
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
