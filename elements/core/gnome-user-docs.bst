kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-user-docs.git
  track: master
  ref: d3e37e17d453d0a4f6415e0294f632235e993349
build-depends:
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
