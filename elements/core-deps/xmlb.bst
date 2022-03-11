kind: meson

sources:
- kind: tar
  url: github_files:hughsie/libxmlb/archive/refs/tags/0.3.7.tar.gz

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
