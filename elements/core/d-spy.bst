kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 1.9.0-1-g3f1fb70e545cac5b8a0d2b9d78095f08ad6df440

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
