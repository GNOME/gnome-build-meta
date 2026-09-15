kind: meson

sources:
- kind: git_repo
  url: gnome:gweather-locations.git
  track: main
  ref: 2026.2-17-g6a0d0acd4da73e7fdae223e04d44012332890232

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/pygobject.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
