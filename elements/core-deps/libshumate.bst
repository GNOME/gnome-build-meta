kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.1/libshumate-1.1.4.tar.xz
  ref: 574c242f89cda4e8395afd89382806a9ea017a2b0d9cfd89d1bb97fa389edf1e
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
