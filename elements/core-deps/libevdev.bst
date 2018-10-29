kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libevdev/libevdev-1.6.0.tar.xz
  ref: f5005c865987d980cc1279b9ec6131b06a89fd9892f649f2a68262b8786ef814
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
