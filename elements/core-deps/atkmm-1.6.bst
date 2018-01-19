kind: autotools
sources:
- kind: git
  url: git_gnome_org:atkmm
  track: atkmm-2-24
depends:
- core-deps/atk.bst
- core-deps/glibmm-2.4.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
