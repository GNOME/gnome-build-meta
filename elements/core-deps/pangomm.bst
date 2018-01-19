kind: autotools
sources:
- kind: git
  url: git_gnome_org:pangomm
  track: master
depends:
- core-deps/atk.bst
- core-deps/cairomm.bst
- core-deps/glibmm.bst
- core-deps/pango.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
