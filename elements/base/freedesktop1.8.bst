kind: stack

description: |
  Base for building GNOME using the Freedesktop SDK 1.8.

  See: https://gitlab.com/freedesktop-sdk/freedesktop-sdk

depends:
- junction: base/freedesktop1.8/freedesktop-sdk-junction.bst
  filename: desktop-image.bst
- junction: base/freedesktop1.8/freedesktop-sdk-junction.bst
  filename: vm/linux-vm-boot/systemd.bst
- base/crates.bst
- base/linker-priority.bst
