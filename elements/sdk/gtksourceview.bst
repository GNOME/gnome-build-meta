kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.6/gtksourceview-5.6.1.tar.xz
  ref: 659d9cc9d034a114f07e7e134ee80d77dec0497cb1516ae5369119c2fcb9da16
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
