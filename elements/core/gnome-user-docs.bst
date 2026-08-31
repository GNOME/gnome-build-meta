kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-user-docs.git
  track: master
  ref: 51.beta-7-g0bd358741434b1d8e5372091b938fc671d48134c

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/yelp-tools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
