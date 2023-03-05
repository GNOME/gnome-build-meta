kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.7/gtksourceview-5.7.2.tar.xz
  ref: bf925f129df3f8a87d71f5e1ef5f78b8ea9d28c53336e9b83af89884558ede8e
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
