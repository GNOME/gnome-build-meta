kind: meson
sources:
- kind: tar
  url: https://github.com/hughsie/libxmlb/archive/0.1.15.tar.gz
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dstemmer=false
