kind: x86image
description: Create a deployment of GNOME runtime libraries
depends:
- filename: vm/gnome-vm.bst
  type: build
- junction: base/freedesktop1.8/freedesktop-sdk-junction.bst
  filename: vm/deploy-tools.bst
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

  rootfs-size: 8G
  sector-size: 512
  swap-size: 40K

  kernel-args: root=/dev/sda2 rootfstype=ext4 init=/bin/sh console=ttyS0

config:
  base: vm/deploy-tools.bst
  input: vm/gnome-vm.bst

  filesystem-tree-setup-commands:
    (<):
    - mkdir -p %{build-root}/dev
    - mkdir -p %{build-root}/proc

  final-commands:
    (>):
    - |
      cat > %{install-root}/run-in-qemu.sh << EOF
      #!/bin/sh
      qemu-system-x86_64 -drive file=sda.img,format=raw -nographic -m 256
      EOF
      chmod +x %{install-root}/run-in-qemu.sh
