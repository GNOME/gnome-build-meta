kind: stack

description: |
  Base system providing dependencies for GNOME.

(?):
- base == 'debian9':
    depends:
    - base/debian9.bst
- base == 'freedesktop1.8':
    depends:
    - base/freedesktop1.8.bst

public:
  bst:
    integration-commands:
    - ldconfig
    - update-mime-database %{prefix}/share/mime
    - update-desktop-database -v
