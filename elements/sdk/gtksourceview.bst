kind: meson

sources:
- kind: git_tag
  url: gnome:gtksourceview.git
  track: master
  ref: 5.7.1-1-g63b7c886e605ea9971315d05f82aad9da2f0c05f

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
