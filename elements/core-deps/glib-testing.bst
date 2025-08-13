kind: meson

sources:
- kind: tar
  url: tecnocode:libglib-testing-0.1.1.tar.xz
  ref: 1823d2e392c804e18985f8bdb89cc006994d7b832f4907c2934f9049f9844f47

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
