kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/pangomm.git
  track: master

build-depends:
- core-deps/mm-common.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/pango.bst
- world/cairomm.bst
- world/glibmm.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=false
    -Dwarnings=min
