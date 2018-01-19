kind: autotools
sources:
- kind: git
  url: git_gnome_org:pangomm
  track: pangomm-2-40
depends:
- core-deps/atk.bst
- core-deps/cairomm-1.0.bst
- core-deps/glibmm-2.4.bst
- core-deps/pango.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
