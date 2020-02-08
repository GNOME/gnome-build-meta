kind: autotools

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/glibmm.git
  track: master

build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/glib.bst
- world/libsigcplusplus.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --enable-maintainer-mode
