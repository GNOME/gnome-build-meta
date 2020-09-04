kind: meson

sources:
- kind: tar
  url: https://tecnocode.co.uk/downloads/libglib-testing-0.1.0.tar.xz

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
