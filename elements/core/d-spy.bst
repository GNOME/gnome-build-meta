kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 49.rc-18-g0e8b503ee1c5d553ededcde1e508e15c97f3ff9a

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
