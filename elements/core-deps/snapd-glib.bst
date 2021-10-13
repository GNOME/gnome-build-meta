kind: meson

sources:
- kind: tar
  url: github_files:snapcore/snapd-glib/releases/download/1.64/snapd-glib-1.64.tar.xz
  ref: f1302d20fddbd7161b552fab9efa0d46b942e5c67c80b9a6dbe40e1d14ed1887

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/json-glib.bst
- sdk/libsoup.bst

variables:
  meson-local: >-
    -Dqt-bindings=false
    -Dvala-bindings=false
