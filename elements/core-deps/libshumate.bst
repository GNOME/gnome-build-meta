kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.1/libshumate-1.1.3.tar.xz
  ref: 6b8a159ed744fdd15992411662a05cb4187fb55e185111a366e0038d2f0b3543
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
