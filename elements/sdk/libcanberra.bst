kind: autotools
sources:
- kind: tar
  url: http://0pointer.de/lennart/projects/libcanberra/libcanberra-0.30.tar.xz
depends:
- sdk/gtk+-3.bst
- filename: desktop/libpulse.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
