kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:atkmm
  track: atkmm-2-24
depends:
- core-deps/atk.bst
- core-deps/glibmm-2.4.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
