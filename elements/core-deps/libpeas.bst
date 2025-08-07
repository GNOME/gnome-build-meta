kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpeas/2.1/libpeas-2.1.0.tar.xz
  ref: 0dc581f4fe29754fb114adc6f46a0423200c111e08c1e5ad08719e55c418de97
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gjs.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dpython3=true
    -Dlua51=false
    -Dintrospection=true
    -Dvapi=true
    -Dgtk_doc=true
