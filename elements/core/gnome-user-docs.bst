kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-user-docs.git
  track: master
  ref: 51.alpha-11-g5621afb298618ee67a475e8df5d8944f38ab8841

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/yelp-tools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
