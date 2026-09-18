kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-user-docs.git
  track: master
  ref: 51.0-5-gdeceaf2596d35fa67e89eba51afc5dc6a8836450

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/yelp-tools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
