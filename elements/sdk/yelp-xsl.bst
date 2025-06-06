kind: meson

sources:
- kind: git_repo
  url: gnome:yelp-xsl.git
  track: master
  ref: 42.1-34-g40677dbe843edd8eafbe46c93155654992449ec7

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
