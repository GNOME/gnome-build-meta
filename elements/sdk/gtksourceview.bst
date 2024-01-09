kind: meson

sources:
- kind: git_repo
  url: gnome:gtksourceview.git
  track: master
  ref: 5.11.0-1-g484d85914d14f4f68c193dbde160ab0366f37fea

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
