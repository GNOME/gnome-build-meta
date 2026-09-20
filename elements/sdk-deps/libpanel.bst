kind: meson

sources:
- kind: git_repo
  url: gnome:libpanel.git
  track: main
  ref: 1.10.4-19-ga9c218cf7867aedbca5d4b380a878cac7f89fb4e

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
