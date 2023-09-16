kind: meson

sources:
- kind: git_repo
  url: gnome:gtksourceview.git
  track: 'gtksourceview-4-8'
  ref: 4.8.4-15-g6fed7ec52fe2f168009120ef1d6269e6d47f03e5

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
