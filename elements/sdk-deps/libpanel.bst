kind: meson
sources:
- kind: git_tag
  url: gnome:libpanel.git
  track: main
  ref: 1.3.0-4-g97ab818cdea408b1e442ded2034b50cf0e6def20
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
