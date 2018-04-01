kind: stack
description: |
  Base for building GNOME using the Freedesktop SDK 1.8.

  See: https://gitlab.com/freedesktop-sdk/freedesktop-sdk
depends:
- junction: base/freedesktop-sdk-junction.bst
  filename: desktop-image.bst
- junction: base/freedesktop-sdk-junction.bst
  filename: vm/linux-vm-boot/systemd.bst
- base/linker-priority.bst
public:
  bst:
    integration-commands:
    - ldconfig
    - PKGSYSTEM_ENABLE_FSYNC=0 update-mime-database %{prefix}/share/mime
    - update-desktop-database -v
