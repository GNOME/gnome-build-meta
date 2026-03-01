kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpeas/2.2/libpeas-2.2.1.tar.xz
  ref: 589eca89b437006edf3755478df037c740a2a84cfa5d202dbad6095e828e2488
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
