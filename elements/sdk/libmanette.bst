kind: meson
sources:
- kind: tar
  url: gnome_downloads:libmanette/0.2/libmanette-0.2.7.tar.xz
  ref: cddd5c02a131072c19c6cde6f2cb2cd57eae7dacb50d14c337efd980baa51a51
build-depends:
- sdk/gtk-doc.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libevdev.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Ddoc=true
