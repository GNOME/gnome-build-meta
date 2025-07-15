kind: meson
sources:
- kind: git_repo
  url: gnome:libpanel.git
  track: main
  ref: 1.10.0-9-g86a234c34202d247f096a1161d149da8b5b0b775
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
