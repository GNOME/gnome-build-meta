kind: meson
sources:
- kind: tar
  url: tarballs_needing_help:babl-0.1.74.tar.xz
  ref: 9a710b6950da37ada94cd9e2046cbce26de12473da32a7b79b7d1432fc66ce0e
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:bootstrap-import.bst
