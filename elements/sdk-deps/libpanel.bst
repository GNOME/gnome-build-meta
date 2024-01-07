kind: meson
sources:
- kind: git_repo
  url: gnome:libpanel.git
  track: main
  ref: 1.4.0-14-gf8dd7ea0979c808efe2806009d7117ba210c950d
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
