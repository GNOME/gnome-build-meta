kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 48.0-8-ga5faa8a73db2c8c412862242730c3638bc11894c

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
