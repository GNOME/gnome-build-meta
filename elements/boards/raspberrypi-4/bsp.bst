kind: stack
description: |

  Linux kernel and platform specific components required to boot a Raspberry Pi 4B 64bit

depends:
- filename: boards/raspberrypi-4/bsp/linux.bst
- filename: boards/raspberrypi-4/bsp/firmware.bst
- filename: boards/raspberrypi-4/bsp/userland-firmware.bst
- filename: boards/raspberrypi-4/bsp/boot.bst
