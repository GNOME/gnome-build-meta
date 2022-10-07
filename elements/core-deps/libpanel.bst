kind: meson
sources:
- kind: git_tag
  url: gnome:libpanel.git
  track: main
  ref: 1.0.0-24-g53831085fd77d2d6bb9f3ed61cabf58680059bc8
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
