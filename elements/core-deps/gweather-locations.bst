kind: meson

sources:
- kind: git_repo
  url: gnome:gweather-locations.git
  track: main
  ref: 2026.1-3-g55ba734a93f0ca3fde8761eb51d8afa5d4efed69

build-depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
