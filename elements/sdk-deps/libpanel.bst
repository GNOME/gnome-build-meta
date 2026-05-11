kind: meson
sources:
- kind: git_repo
  url: gnome:libpanel.git
  track: main
  ref: 1.10.4-14-gecd0211246a28ee8bad5549127b0f622ac7a361d
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
