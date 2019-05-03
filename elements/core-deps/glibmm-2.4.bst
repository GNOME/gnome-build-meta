kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/glibmm.git
  track: glibmm-2-60
depends:
- core-deps/libsigcplusplus-2.0.bst
- sdk/glib.bst
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
