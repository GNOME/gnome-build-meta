kind: autotools
sources:
- kind: tar
  url: github_com:storaged-project/libblockdev/releases/download/2.16-1/libblockdev-2.16.tar.gz
depends:
- core-deps/cryptsetup.bst
- core-deps/dmraid.bst
- core-deps/kmod.bst
- core-deps/libbytesize.bst
- core-deps/lvm2.bst
- core-deps/parted.bst
- core-deps/volume-key.bst
- base.bst
