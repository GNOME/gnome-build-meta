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

  rootfs-size: 5G
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
    (>):
    - |
      # Set some setuid/setgid binaries, since BuildStream still does not
      # support persisting these attributes in the artifacts, we need to
      # do it at the last minute when creating the image.
      chmod 4755 %{build-root}/usr/bin/su
      chmod 4755 %{build-root}/usr/bin/passwd
      chmod 4755 %{build-root}/usr/bin/gpasswd
      chmod 4755 %{build-root}/usr/bin/chsh
      chmod 4755 %{build-root}/usr/bin/chfn
      chmod 4755 %{build-root}/usr/bin/newgrp
      chmod 4755 %{build-root}/usr/bin/pkexec
      chmod 4755 %{build-root}/usr/bin/mount
      chmod 4755 %{build-root}/usr/bin/umount
      chmod 2755 %{build-root}/usr/bin/expiry
      chmod 2755 %{build-root}/usr/bin/chage
      chmod 2755 %{build-root}/usr/bin/ssh-agent

  final-commands:
    (>):
    - |
      cat > %{install-root}/run-in-qemu.sh << EOF
      #!/bin/sh
      qemu-system-x86_64 -drive file=sda.qcow2 -enable-kvm -m 2G -netdev user,id=net1 -device e1000,netdev=net1 -vga virtio -display gtk,gl=on -usb -usbdevice tablet
      EOF
      chmod +x %{install-root}/run-in-qemu.sh
