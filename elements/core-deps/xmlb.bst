kind: meson

sources:
- kind: tar
  url: github_files:hughsie/libxmlb/archive/0.3.2.tar.gz

  ref: ccab521ea30a1ac76c4b49d79876bb5c860b10bbaeaa3eb9045afdefa3bb41fc
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
