kind: meson

sources:
- kind: git_tag
  url: gnome:d-spy.git
  track: main
  ref: 1.6.0-1-g4499cab009e5b67a710cc7554e0604ce5850ad74

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
