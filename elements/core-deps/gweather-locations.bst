kind: meson

sources:
- kind: git_repo
  url: gnome:gweather-locations.git
  track: main
  ref: 2026.2-2-g6c825675a3d2c1f0341900030f55b7a8579c2804

build-depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
