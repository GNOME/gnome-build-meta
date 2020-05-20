kind: stack
description:  |
  Linux kernel and platform specific components required to boot an Raspberry Pi 3B+

depends:
  - filename: boards/raspberrypi-4/bsp/kernel-modules.bst
  - filename: boards/raspberrypi-4/bsp/linux.bst
  - filename: boards/raspberrypi-4/bsp/firmware.bst
  - filename: boards/raspberrypi-4/bsp/userland-firmware.bst
  - filename: boards/raspberrypi-4/bsp/boot.bst
