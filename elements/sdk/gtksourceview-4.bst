kind: meson

sources:
- kind: git_tag
  url: gnome:gtksourceview.git
  track: 'gtksourceview-4-8'
  ref: 4.8.3-17-g71e5c4aa40b55c80b2aef3685f9d2d8dbdf07822

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
