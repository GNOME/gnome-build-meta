kind: meson

sources:
- kind: git_repo
  url: gnome:gweather-locations.git
  track: main
  ref: 2026.2-15-gc5cac5adbf048fe7ca32caa6aa17c0b11ed33617

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/pygobject.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
