kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpeas/2.0/libpeas-2.0.3.tar.xz
  ref: 39e3b507c29d2d01df1345e9b3380fd7a9d0aeb5b2e657d38e6c2bea5023e5f0
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
