kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.4/gtksourceview-5.4.1.tar.xz
  ref: eb3584099cfa0adc9a0b1ede08def6320bd099e79e74a2d0aefb4057cd93d68e
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
