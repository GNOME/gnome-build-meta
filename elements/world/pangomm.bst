kind: autotools

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/pangomm.git
  track: master

build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/atk.bst
- sdk/pango.bst
- world/cairomm.bst
- world/glibmm.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --enable-maintainer-mode
