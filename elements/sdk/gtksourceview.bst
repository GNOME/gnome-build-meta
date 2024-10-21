kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.14/gtksourceview-5.14.1.tar.xz
  ref: 009862e87b929da5a724ece079f01f8cee29e74797a1ecac349f58c15a3cbc58
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/sysprof-minimal.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dinstall-tests=true
    -Ddocumentation=true
    -Dsysprof=true
