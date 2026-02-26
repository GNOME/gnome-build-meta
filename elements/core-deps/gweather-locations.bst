kind: meson

sources:
- kind: git_repo
  url: gnome:gweather-locations.git
  track: main
  ref: 2026.1-6-gc49662438dc532cf2046b00520d48e2853e4973f

build-depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
