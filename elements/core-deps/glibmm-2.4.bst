kind: autotools
sources:
- kind: git
  url: git_gnome_org:glibmm
  track: glibmm-2-54
depends:
- sdk/glib.bst
- core-deps/libsigcplusplus-2.0.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
