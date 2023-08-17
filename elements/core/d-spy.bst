kind: meson

sources:
- kind: git_tag
  url: gnome:d-spy.git
  track: main
  ref: 1.6.0-28-g3f993b5c88503fd67365e1da25bb170ed2d131ee

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
