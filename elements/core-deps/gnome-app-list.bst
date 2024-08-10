kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-app-list.git
  track: main
  ref: 0.2-2-g09d4048209f2fe29635bbced6dd403317c561001

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
