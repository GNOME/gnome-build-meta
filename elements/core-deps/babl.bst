kind: meson
sources:
- kind: tar
  url: https://ftp.gimp.org/pub/babl/0.1/babl-0.1.74.tar.xz
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:bootstrap-import.bst
