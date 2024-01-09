kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.11/gtksourceview-5.11.0.tar.xz
  ref: 55f9275277a9b3b40d3a55f3e3612e3101d298f48488a99d2afec3c771bec330
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
