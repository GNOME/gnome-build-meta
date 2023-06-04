kind: stack

depends:
- boards/librem5/bsp/u-boot.bst
- freedesktop-sdk.bst:components/ostree.bst
- core-deps/qemu.bst
- freedesktop-sdk.bst:components/genimage.bst
- freedesktop-sdk.bst:integration/mtab.bst
