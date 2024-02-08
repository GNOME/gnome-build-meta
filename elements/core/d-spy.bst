kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 1.9.0-9-gffadd7c36821e042d71054bd7a820c89e8ea0e55

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
