kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 47.0-14-gfc546bf1884b69dc47a23ff076cff7c3dc511979

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
