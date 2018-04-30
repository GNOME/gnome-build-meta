kind: autotools
sources:
- kind: git
  url: git_gnome_org:glibmm
  track: master
depends:
- core-deps/libsigcplusplus.bst
- sdk/glib.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
