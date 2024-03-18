kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 1.10.0-2-gfe00a93222e255c8421b428e25d921942bc10418

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
