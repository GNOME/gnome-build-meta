kind: meson
sources:
- kind: tar
  url: https://download.gimp.org/pub/babl/0.1/babl-0.1.84.tar.xz
  ref: e7e38b8441f77feb9dc8231cb434a86190a21f2f3692c281457e99d35e9c34ea
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Denable-vapi=false
