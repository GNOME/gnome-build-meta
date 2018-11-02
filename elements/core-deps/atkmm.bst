kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/atkmm
  track: master
depends:
- core-deps/glibmm.bst
- sdk/atk.bst
- filename: base/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
