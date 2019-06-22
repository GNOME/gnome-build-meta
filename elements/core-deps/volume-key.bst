kind: autotools
sources:
- kind: tar
  url: https://releases.pagure.org/volume_key/volume_key-0.3.12.tar.xz
depends:
- core-deps/cryptsetup.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: admin
  conf-local: >-
    --without-python
    --with-python3
