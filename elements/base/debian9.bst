kind: stack

description: |
  Base for building GNOME based off Debian 9.

  Created using https://gitlab.com/BuildStream/debootstrap-ostree/

  For more information, see https://wiki.gnome.org/Projects/BuildStream/Infrastructure

depends:
- base/debian9/base-configure.bst
- base/debian9/base-system.bst
- base/crates.bst
- base/linker-priority.bst
- base/debian9/ninja.bst
