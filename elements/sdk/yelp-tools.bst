kind: meson
sources:
- kind: git_repo
  url: gnome:yelp-tools.git
  track: master
  ref: 42.1-1-g1b2476ba318f32f73933e5efb09d3915790ea069
build-depends:
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/python3-lxml.bst
