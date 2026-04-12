kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-user-docs.git
  track: master
  ref: 50.0-10-g31f6ddd9c3c2c0acce23aa05b409559fe8bca692
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
