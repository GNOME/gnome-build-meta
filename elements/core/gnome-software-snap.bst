kind: filter

build-depends:
- core/gnome-software-all.bst

runtime-depends:
- core/gnome-software.bst
- core-deps/snapd-glib.bst

config:
  include-orphans: false
  include:
  - snap-plugin
