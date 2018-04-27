kind: autotools
sources:
- kind: git
  url: git_gnome_org:atkmm
  track: master
depends:
- sdk/atk.bst
- core-deps/glibmm.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
