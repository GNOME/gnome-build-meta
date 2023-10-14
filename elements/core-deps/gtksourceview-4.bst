kind: meson

sources:
- kind: git_repo
  url: gnome:gtksourceview.git
  track: 'gtksourceview-4-8'
  ref: 4.8.4-16-gd4f33074b04e2fdd408de8ce0bdbd1f6860ccfe4

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dinstall_tests=true
    -Dgtk_doc=true
