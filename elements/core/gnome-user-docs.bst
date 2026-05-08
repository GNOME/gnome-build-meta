kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-user-docs.git
  track: master
  ref: 50.0-11-gf58e69f30380bbbcaba9e4ffbcebf8962f31d70b
build-depends:
- sdk/yelp-tools.bst
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
