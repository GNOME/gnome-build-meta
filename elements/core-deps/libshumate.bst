kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.1/libshumate-1.1.0.tar.xz
  ref: b3b7c4c2d3002f37b951c9ca99b09275d0aa82265c69f53374ce12faefd3b14e
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
