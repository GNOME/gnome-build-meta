kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:pangomm
  track: master
depends:
- core-deps/atk.bst
- core-deps/cairomm.bst
- core-deps/glibmm.bst
- core-deps/pango.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
