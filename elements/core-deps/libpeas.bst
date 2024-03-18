kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpeas/2.0/libpeas-2.0.2.tar.xz
  ref: f30dffed63ca2f40477b40e171c0a31f80d91425ba1e1e47320ee6425480ecc3
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
