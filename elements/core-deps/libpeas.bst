kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpeas/2.0/libpeas-2.0.4.tar.xz
  ref: d7a59de5e8d048073104d02a86d1b3c3b558b85f3f296c73d10c7df4b9a7624e

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
