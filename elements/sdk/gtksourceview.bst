kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.6/gtksourceview-5.6.0.tar.xz
  ref: 0ca3df1d2af61bde3608d0d3f233e4a41f958e2ae59b9fc209c3df6102e8afdd
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/sysprof-minimal.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dinstall_tests=true
    -Dgtk_doc=true
    -Dsysprof=true
