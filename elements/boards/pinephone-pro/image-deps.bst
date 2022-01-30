kind: stack

depends:
- boards/pinebook-pro/u-boot.bst
- core-deps/libostree.bst
- core-deps/qemu.bst
- freedesktop-sdk.bst:components/genimage.bst
- freedesktop-sdk.bst:integration/mtab.bst
