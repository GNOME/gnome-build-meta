kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/glibmm
  track: master
depends:
- core-deps/libsigcplusplus.bst
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
