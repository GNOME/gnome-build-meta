kind: autotools
sources:
- kind: git
  url: git_gnome_org:pangomm
  track: master
depends:
- core-deps/cairomm.bst
- core-deps/glibmm.bst
- sdk/atk.bst
- sdk/pango.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
