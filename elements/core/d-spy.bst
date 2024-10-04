kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 47.0-4-g4ac09d28d546f3528877084d788ac44cc420ddbf

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
