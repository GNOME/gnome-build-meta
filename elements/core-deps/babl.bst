kind: meson
sources:
- kind: tar
  url: https://download.gimp.org/pub/babl/0.1/babl-0.1.78.tar.xz
  ref: 17d5493633bff5585d9f375bc4df5925157cd1c70ccd7c22a635be75c172523a
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:bootstrap-import.bst
