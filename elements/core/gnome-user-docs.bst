kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-user-docs.git
  track: master
  ref: 51.alpha-9-g38872ca935a555325c06a927474fca0c76fe36a9

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/yelp-tools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
