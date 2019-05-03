kind: x86image
description: Create a deployment of the desktop image
depends:
- filename: vm/desktop-vm.bst
  type: build
- filename: vm/deploy-tools.bst
  junction: freedesktop-sdk.bst
  type: build

variables:
  # Size of the disk to create
  #
  # Should be able to calculate this based on the space
  # used, however it must be a multiple of (63 * 512) bytes
  # as mtools wants a size that is devisable by sectors (512 bytes)
  # per track (63).
  #
  # This is the smallest boot partition I managed to make.
  boot-size: 38912K

  rootfs-size: 20G
  sector-size: 512
  swap-size: 40K

  kernel-args: root=/dev/sda2 rootfstype=ext4 init=/usr/lib/systemd/systemd console=ttyS0

config:
  base: vm/deploy-tools.bst
  input: vm/desktop-vm.bst

  filesystem-tree-setup-commands:
    (<):
    - mkdir -p %{build-root}/dev
    - mkdir -p %{build-root}/proc

  final-commands:
    (>):
    - |
      cat > %{install-root}/run-in-qemu.sh << EOF
      #!/bin/sh
      qemu-system-x86_64 -drive file=sda.img,format=raw -enable-kvm -m 2G -vga virtio -display sdl,gl=on -usb -usbdevice tablet
      EOF
      chmod +x %{install-root}/run-in-qemu.sh
