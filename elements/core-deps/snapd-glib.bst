kind: meson

sources:
- kind: git_repo
  url: github:canonical/snapd-glib.git
  track: '*.*'
  ref: 1.72-0-g7d45a89444e38872f2afa1266c4d696752d7e2cd

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
