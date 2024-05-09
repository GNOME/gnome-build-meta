kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 1.10.0-13-g7ed2c82f0e828279d96c925bbdff6c21b17547c2

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
