kind: autotools
sources:
- kind: git
  url: git_gnome_org:pangomm
  track: master
depends:
- sdk/atk.bst
- core-deps/cairomm.bst
- core-deps/glibmm.bst
- sdk/pango.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
