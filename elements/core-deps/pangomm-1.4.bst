kind: autotools
sources:
- kind: git
  url: git_gnome_org:pangomm
  track: pangomm-2-40
depends:
- core-deps/cairomm-1.0.bst
- core-deps/glibmm-2.4.bst
- sdk/atk.bst
- sdk/pango.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
