kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.4/libpanel-1.4.0.tar.xz
  ref: 80f143d900e8ced8ff84fa86fe34eb6b48323cb610bcfb6858ea65d8b98f152c
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
