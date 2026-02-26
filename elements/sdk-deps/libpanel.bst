kind: meson
sources:
- kind: git_repo
  url: gnome:libpanel.git
  track: main
  ref: 1.10.4-1-ga2a7c6f1cc9fb7314d92f2f30e83a0b1d17d56a7
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
