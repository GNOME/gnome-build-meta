kind: meson
sources:
- kind: tar
  url: https://ftp.gimp.org/pub/babl/0.1/babl-0.1.70.tar.xz
depends:
- filename: sdk/gobject-introspection.bst
  type: build
- filename: components/git-minimal.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/lcms.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
