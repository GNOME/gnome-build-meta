kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 1.9.0-13-g10f8e05b838a6a837792f202a25c2e353f07c382

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
