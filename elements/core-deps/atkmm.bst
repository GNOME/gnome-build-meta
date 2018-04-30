kind: autotools
sources:
- kind: git
  url: git_gnome_org:atkmm
  track: master
depends:
- core-deps/glibmm.bst
- sdk/atk.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
