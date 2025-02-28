kind: stack

depends:
- freedesktop-sdk.bst:components/ostree.bst
- iso-deps/libisoburn.bst
- iso-deps/isomd5sum.bst
- freedesktop-sdk.bst:integration/mtab.bst
- freedesktop-sdk.bst:components/genimage.bst
- freedesktop-sdk.bst:vm/prepare-image.bst
- freedesktop-sdk.bst:components/squashfs-tools.bst
