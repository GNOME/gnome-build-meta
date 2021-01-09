kind: stack

depends:
- vm/common-deps.bst
- vm/os-release-user.bst

- boards/raspberrypi-4/initramfs.bst
- boards/raspberrypi-4/bsp/firmware.bst
- boards/raspberrypi-4/bsp/rpi-userland.bst
