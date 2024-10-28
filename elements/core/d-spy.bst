kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 47.0-6-g11c895ddd6807e1217e527e6bf7283b5e46c2319

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
