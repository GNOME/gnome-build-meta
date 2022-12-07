kind: meson

sources:
- kind: git_tag
  url: gnome:gtksourceview.git
  track: master
  ref: 5.6.1-33-g874ed3541acb61066fcbeda36322a7dc3718ba94

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
