kind: meson
sources:
- kind: git_tag
  url: gnome:libpanel.git
  track: main
  ref: 1.2.0-16-g2389a7aaaca74c4553ced175c39c5521fb6b3082
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
