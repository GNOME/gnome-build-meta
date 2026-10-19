kind: meson

sources:
- kind: git_repo
  url: gnome:libpanel.git
  track: main
  ref: 1.10.4-20-g1d8c714703111bb9f2e9dd22cc2b288c1beda09c

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
