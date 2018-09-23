kind: autotools
sources:
- kind: tar
  url: https://releases.pagure.org/volume_key/volume_key-0.3.9.tar.xz
- kind: patch
  path: files/volume-key/volume_key-0.3.9-config.h.patch
depends:
- core-deps/cryptsetup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: admin
