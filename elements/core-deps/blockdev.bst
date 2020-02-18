kind: autotools
sources:
- kind: tar
  url: github_com:storaged-project/libblockdev/releases/download/2.21-1/libblockdev-2.21.tar.gz
  ref: 317225f0d6cbc99d90481b0f8a30be8c325f5b5aebe82f9adf409214081de10a
depends:
- core-deps/cryptsetup.bst
- core-deps/dmraid.bst
- core-deps/libbytesize.bst
- core-deps/libyaml.bst
- core-deps/lvm2.bst
- core-deps/ndctl.bst
- core-deps/parted.bst
- core-deps/volume-key.bst
- filename: vm/linux-vm-boot/kmod.bst
  junction: freedesktop-sdk.bst
- filename: components/systemd.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
