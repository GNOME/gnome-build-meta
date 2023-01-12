kind: meson

sources:
- kind: git_tag
  url: gnome:gtksourceview.git
  track: 'gtksourceview-4-8'
  ref: 4.8.4-9-gc4bd8951532dbefc935b2535ea2c74f152cb1e40

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
