kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/atkmm.git
  track: atkmm-2-28
depends:
- core-deps/glibmm-2.4.bst
- sdk/atk.bst
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --enable-maintainer-mode
