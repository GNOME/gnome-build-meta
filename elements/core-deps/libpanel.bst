kind: meson
sources:
- kind: git_tag
  url: gnome:libpanel.git
  track: main
  ref: 1.1.2-7-gbe51c64e514318dbaa15a68c765753c13eea82e7
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
