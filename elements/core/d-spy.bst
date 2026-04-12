kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 50.0-4-g27ebb6b67ee9a9dffe5d5a62b32384f9ddccee46

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
