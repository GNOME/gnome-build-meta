kind: stack

depends:
- freedesktop-sdk.bst:integration/mtab.bst
- freedesktop-sdk.bst:components/genimage.bst
- vm/qemu-tools.bst
- core-deps/libostree.bst
- boards/raspberrypi-4/bsp/u-boot.bst
- boards/raspberrypi-4/bsp/rpi-efi-boot-script.bst
