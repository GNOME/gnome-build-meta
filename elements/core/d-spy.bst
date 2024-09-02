kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 47.alpha-19-g815a970c026e7b9fce9309bb00ac13636e9b3d60

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
