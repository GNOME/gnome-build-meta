kind: autotools
sources:
- kind: tar
  url: github_com:storaged-project/libblockdev/releases/download/2.16-1/libblockdev-2.16.tar.gz
  ref: d841ae446cf6dc545e4f7386e13dfd8c3e07c4b6a962536b7c0fcd20e3a4d9e4
depends:
- core-deps/cryptsetup.bst
- core-deps/dmraid.bst
- core-deps/kmod.bst
- core-deps/libbytesize.bst
- core-deps/lvm2.bst
- core-deps/parted.bst
- core-deps/volume-key.bst
- filename: vm/linux-vm-boot/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
