kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.0/libshumate-1.0.3.tar.xz
  ref: 77a192f0dfec082b8de20b1939f3adf03eed41114d49fdaae2bbb2729ceb015a
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

variables:
  meson-local: >-
    -Dlibsoup3=true
