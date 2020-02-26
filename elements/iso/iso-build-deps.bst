kind: stack

runtime-depends:
- core-deps/ostree.bst
- iso/libisoburn.bst
- iso/isomd5sum.bst
- vm/qemu-tools.bst
- freedesktop-sdk.bst:integration/mtab.bst
- freedesktop-sdk.bst:components/genimage.bst
- freedesktop-sdk.bst:vm/prepare-image.bst
- freedesktop-sdk.bst:snap-images/squashfs-tools.bst
