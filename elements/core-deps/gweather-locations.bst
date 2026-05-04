kind: meson

sources:
- kind: git_repo
  url: gnome:gweather-locations.git
  track: main
  ref: 2026.2-10-gabc52bf340254b926bc9e99cf87c4909e2e4eb43

build-depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
