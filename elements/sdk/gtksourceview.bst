kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.2/gtksourceview-5.2.0.tar.xz
  ref: c9b34fa02654f56ce22fa08827d89db4ba81631b2e6d7d31ea65d13c729430e9
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dinstall_tests=true
    -Dgtk_doc=true
