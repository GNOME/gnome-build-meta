kind: meson

sources:
- kind: git_tag
  url: gnome:gtksourceview.git
  track: 'gtksourceview-4-8'
  ref: 4.8.4-13-ge313a10fd3399389f4e9aeb027cb1e18e4f4bc4a

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
