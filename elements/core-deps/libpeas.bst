kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpeas/1.99/libpeas-1.99.0.tar.xz
  ref: 04e0cef281bc902628e0853ed3e7bc28e4ab63116381409bfd40c1ac4bdd3274
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gjs.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dpython3=true
    -Dlua51=false
    -Dintrospection=true
    -Dvapi=true
    -Dgtk_doc=true
