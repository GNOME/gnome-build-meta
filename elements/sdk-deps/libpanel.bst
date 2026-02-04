kind: meson
sources:
- kind: git_repo
  url: gnome:libpanel.git
  track: main
  ref: 1.10.3-28-g4cc2198bfdf3f508834b905f62f2f517e221d993
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
