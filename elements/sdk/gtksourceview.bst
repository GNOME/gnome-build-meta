kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.3/gtksourceview-5.3.2.tar.xz
  ref: af7736e2ee3cdbc1013090e8caf35fb89d65cf41c9c399cac5d8992d955ded30
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
