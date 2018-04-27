kind: autotools
sources:
- kind: tar
  url: github_com:storaged-project/libblockdev/releases/download/2.16-1/libblockdev-2.16.tar.gz
depends:
- sdk/cryptsetup.bst
- sdk/dmraid.bst
- sdk/kmod.bst
- sdk/libbytesize.bst
- sdk/lvm2.bst
- sdk/parted.bst
- sdk/volume-key.bst
- base.bst
