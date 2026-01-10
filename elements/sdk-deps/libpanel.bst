kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.10/libpanel-1.10.3.tar.xz
  ref: 42a01baf8b94440f194ea8342b244bd6992dfb024ca3160c9477ff498ec3a2b6
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
