kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-user-docs.git
  track: master
  ref: 50.0-12-g4c44cad1e25de524e713b0687d2f7e5cbaa7168b
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
