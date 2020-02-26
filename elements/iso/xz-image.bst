kind: script

build-depends:
- vm/qemu-tools.bst
- vm/image.bst

variables:
  # This name format is required by eos-installer
  basename: 'GNOMEOS-%{branch}-%{arch}-%{arch}.%{branch}.base'

config:
  layout:
  - element: vm/qemu-tools.bst
    destination: /
  - element: vm/image.bst
    destination: /images
  - element: ''
    destination: /tmp

  commands:
  - qemu-img convert -O raw /images/disk.qcow2 /tmp/disk.img
  # Mark 2nd partition for eos-repartition
  # FIXME: Fix genimage to make this possible in vm/image.bst
  - sfdisk --part-attrs /tmp/disk.img 2 55
  - xz /tmp/disk.img
  - install -Dm644 /tmp/disk.img.xz "%{install-root}/%{basename}.img.xz"
