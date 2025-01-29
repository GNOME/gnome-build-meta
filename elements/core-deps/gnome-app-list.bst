kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-app-list.git
  track: main
  ref: 2.0-0-g1d2bd4224e780becdeff8f2e41ba1626b5d6ce16

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
