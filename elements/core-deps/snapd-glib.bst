kind: meson

sources:
- kind: tar
  url: github_files:canonical/snapd-glib/archive/refs/tags/1.70.tar.gz
  ref: 022df48e519fe2e80f90eba2043aaa54f829f05c87ec38bc1ba794aec8e3c0a4

build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/json-glib.bst
- sdk/libsoup.bst

variables:
  meson-local: >-
    -Dqt5=false
    -Dqt6=false
    -Dvala-bindings=false
