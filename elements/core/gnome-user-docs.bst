kind: autotools
sources:
- kind: git_repo
  url: gnome:gnome-user-docs.git
  track: master
  ref: 50.beta-1-g6dda4f834796972a1afd16f396d9cd301af8b178
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
