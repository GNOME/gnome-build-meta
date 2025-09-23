kind: meson

sources:
- kind: git_repo
  url: gnome:yelp-xsl.git
  track: master
  ref: 49.0-1-g067b81aef477df890cecffa2d23babc520cc1702

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/grep.bst

depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
