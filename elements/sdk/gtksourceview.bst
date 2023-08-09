kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.8/gtksourceview-5.8.0.tar.xz
  ref: 110dd4c20def21886fbf777298fe0ef8cc2ad6023b8f36c7424411a414818933
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
