kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.7/gtksourceview-5.7.0.tar.xz
  ref: 886dd92cacb9ef17b349ca5bbbea165cbf32e64297061a09bd9a883b477c95dc
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
