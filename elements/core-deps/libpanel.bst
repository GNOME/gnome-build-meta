kind: meson
sources:
- kind: git_tag
  url: gnome:libpanel.git
  track: main
  ref: 1.2.0-1-g32a4f6e94e3d2cc2e230010e4bf5b937483af9bf
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
