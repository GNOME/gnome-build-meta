kind: meson

sources:
- kind: git_repo
  url: gnome:gweather-locations.git
  track: main
  ref: 2026.2-7-g98fb050c1b7b92b3b057ee2cef74c5fbef60b7eb

build-depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
