kind: autotools
sources:
- kind: tar
  url: http://0pointer.de/lennart/projects/libcanberra/libcanberra-0.30.tar.xz
  ref: c2b671e67e0c288a69fc33dc1b6f1b534d07882c2aceed37004bf48c601afa72
depends:
- sdk/gtk+-3.bst
- filename: desktop/libpulse.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-aux: build-aux
