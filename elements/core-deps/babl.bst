kind: meson
sources:
- kind: tar
  url: https://download.gimp.org/pub/babl/0.1/babl-0.1.80.tar.xz
  ref:
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
