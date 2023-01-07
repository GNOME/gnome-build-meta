kind: meson

sources:
- kind: git_tag
  url: gnome:gtksourceview.git
  track: master
  ref: 5.6.1-54-gca98185545d941d052b94b954dd3a015472bde12

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
