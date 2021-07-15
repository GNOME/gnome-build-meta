kind: meson
sources:
- kind: tar
  url: gnome_downloads:gtksourceview/4.8/gtksourceview-4.8.1.tar.xz
  ref: d163d71b5fcafbc5b1eec6dd841edbdbcddd3a7511cd5fdcffd86b8bbfe69ac1
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
