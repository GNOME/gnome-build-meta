kind: meson

sources:
- kind: git_tag
  url: gnome:gtksourceview.git
  track: 'gtksourceview-4-8'
  ref: 4.8.4-1-g40315bb4b0934c386102e095acbc87a9af3dc380

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
