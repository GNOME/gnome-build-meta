kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/glibmm.git
  track: glibmm-2-64
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/libsigcplusplus-2.0.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-maintainer-mode
