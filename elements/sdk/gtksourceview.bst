kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.5/gtksourceview-5.5.1.tar.xz
  ref: 4ae58ccd15f071e45f88185f5a9b020560a0b1a950f99cab7dc5e8cd14c40d19
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
