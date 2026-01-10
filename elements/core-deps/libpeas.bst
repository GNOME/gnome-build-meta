kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpeas/2.2/libpeas-2.2.0.tar.xz
  ref: c2887233f084a69fabfc7fa0140d410491863d7050afb28677f9a553b2580ad9
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
