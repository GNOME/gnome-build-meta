kind: autotools
sources:
- kind: git_tag
  url: gnome:yelp-xsl.git
  track: master
  ref: 42.1-3-g9e66a1cda5daa57d469cff1f542153647064a6c7
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
