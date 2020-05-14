kind: stack
description:  |
  Linux kernel and platform specific components required to boot an Raspberry Pi 3B+

depends:
  - filename: raspi/bsp/linux.bst
  - filename: raspi/bsp/firmware.bst
  - filename: raspi/bsp/userland-firmware.bst
  - filename: raspi/bsp/boot.bst
  - filename: raspi/bsp/kernel-modules.bst
