kind: meson

sources:
- kind: git_repo
  url: gnome:adwaita-fonts.git
  track: main
  ref: 51.0-0-g0c79765f2bef25b38902fd8497616ac28185254c
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

