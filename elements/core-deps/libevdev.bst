kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libevdev/libevdev-1.6.0.tar.xz
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
