kind: stack
description: Abstract base system providing dependencies for GNOME.
depends:
- base/base-configure.bst
- base/linker-priority.bst
- base/ninja.bst
public:
  bst:
    integration-commands:
    - ldconfig
    - PKGSYSTEM_ENABLE_FSYNC=0 update-mime-database %{prefix}/share/mime
    - update-desktop-database -v
