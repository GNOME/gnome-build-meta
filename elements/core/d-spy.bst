kind: meson

sources:
- kind: git_tag
  url: gnome:d-spy.git
  track: main
  ref: 1.6.0-34-ga77d320ebb104ea23d7f67c944dffdd8cf63a981

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
