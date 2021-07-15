kind: meson
sources:
- kind: tar
  url: https://github.com/hughsie/libxmlb/archive/0.3.0.tar.gz
  ref: be136770805e27087519c6366014c1ba2f48d7e4b8867950a942915feca47a5f
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
