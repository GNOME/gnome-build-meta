kind: meson

sources:
- kind: git_repo
  url: gnome:gweather-locations.git
  track: main
  ref: 2026.2-14-g7c76ab3770d29262fdf5c5e3c7a42e6b1f8cb6fb

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/pygobject.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
