kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 49.rc-17-g203313068e9e1d613b7602d5f496943dc2c71e4d

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
