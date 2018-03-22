kind: autotools
sources:
- kind: tar
  url: https://releases.pagure.org/volume_key/volume_key-0.3.9.tar.xz
  ref: 450a54fe9bf56acec6850c1e71371d3e4913c9ca1ef0cdc3a517b4b6910412a6
  etag: '"6caa4-548ffab6ad434"'
- kind: patch
  path: files/volume-key/volume_key-0.3.9-config.h.patch
depends:
- core-deps/cryptsetup.bst
- core-deps/gpgme.bst
- base.bst
