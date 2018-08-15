depends:
- core-deps/cryptsetup.bst
- core-deps/gpgme.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 450a54fe9bf56acec6850c1e71371d3e4913c9ca1ef0cdc3a517b4b6910412a6
  url: https://releases.pagure.org/volume_key/volume_key-0.3.9.tar.xz
- kind: patch
  path: files/volume-key/volume_key-0.3.9-config.h.patch
variables:
  conf-aux: admin
