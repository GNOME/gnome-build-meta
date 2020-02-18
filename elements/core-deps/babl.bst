kind: meson
sources:
- kind: tar
  url: https://ftp.gimp.org/pub/babl/0.1/babl-0.1.72.tar.xz
  ref: 64e111097b1fa22f6c9bf044e341a9cd9ee1372c5acfa0b452e7a86fb37c6a42
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
