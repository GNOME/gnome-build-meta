kind: autotools
sources:
- kind: git_tag
  url: gnome:yelp-xsl.git
  track: master
  ref: 42.1-2-g35d009fa07d78c8b0a9e24f6e80eb6f61fbcca22
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
