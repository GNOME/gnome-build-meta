kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpeas/2.0/libpeas-2.0.7.tar.xz
  ref: 1e9a9d69761d2109eff5b7c11d8c96b4867ccfaca2b921eded49401192769ec9

build-depends:
- sdk/gi-docgen.bst
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
