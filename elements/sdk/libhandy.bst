kind: meson

sources:
- kind: tar
  url: gnome_downloads:libhandy/1.7/libhandy-1.7.0.tar.xz
  ref: 8c92c06a57b26af16a25ad0b5c375a7db7f09b57012abde6e168b62978770cf7
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dgtk_doc=true
    -Dvapi=true
    -Dtests=true
    -Dexamples=false
    -Dglade_catalog=disabled
