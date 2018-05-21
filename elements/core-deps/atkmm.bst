kind: autotools
sources:
- kind: git
  url: git_gnome_org:atkmm
  track: master
depends:
- core-deps/atk.bst
- core-deps/glibmm.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
