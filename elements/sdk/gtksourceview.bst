kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.4/gtksourceview-5.4.0.tar.xz
  ref: 003bc217e670a8ec8aa3aece994b70e70b7d6b8074938adda21718555d84e637
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
