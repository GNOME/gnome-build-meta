kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-app-list.git
  track: main
  ref: 3.0-0-g4dfe4622f295e2d06c17ff94fc7e6f0b61ea5347

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
