kind: meson
sources:
- kind: tar
  url: https://download.gimp.org/pub/babl/0.1/babl-0.1.76.tar.xz
  ref: 0084749f7f6050c1d3543067e527665b65e183c1fb80816ea37b2380bd9073a0
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
