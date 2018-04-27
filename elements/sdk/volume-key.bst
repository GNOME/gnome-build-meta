kind: autotools
sources:
- kind: tar
  url: https://releases.pagure.org/volume_key/volume_key-0.3.9.tar.xz
- kind: patch
  path: files/volume-key/volume_key-0.3.9-config.h.patch
depends:
- sdk/cryptsetup.bst
- sdk/gpgme.bst
- base.bst
