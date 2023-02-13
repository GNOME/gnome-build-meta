kind: autotools
sources:
- kind: git_tag
  url: gnome:gnome-user-docs.git
  track: master
  ref: 43.0-54-gf5480648b1e4b4269949e459dea8216095fb7550
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
