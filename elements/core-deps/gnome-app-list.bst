kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-app-list.git
  track: main
  ref: 3.0-2-gaa1c4585bcfd1571a2278c1a2c35927d8e048423

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
