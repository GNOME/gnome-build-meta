kind: meson

sources:
- kind: tar
  url: https://github.com/hughsie/libxmlb/archive/0.1.15.tar.gz

  ref: fa29b6bbf7b91107da6f157e8f7903d176b0cf04bcb0ba1ab64cb38b19d09a19
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dstemmer=false
