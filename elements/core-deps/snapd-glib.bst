kind: meson

sources:
- kind: git_repo
  url: github:canonical/snapd-glib.git
  track: '*.*'
  ref: 1.70-0-gc7dd8f2cc12c8823e658c5e42e34a97f7a3ddd97

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
