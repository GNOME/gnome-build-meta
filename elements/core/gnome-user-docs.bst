kind: autotools
sources:
- kind: git_repo
  url: gnome:gnome-user-docs.git
  track: master
  ref: 46.0-2-g1b47c204bdba5e2a5ab458b88e4fd08f128e4f4a
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
