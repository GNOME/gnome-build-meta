kind: autotools

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gtkmm.git
  track: master

build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/glib.bst
- sdk/gtk.bst
- world/atkmm.bst
- world/cairomm.bst
- world/pangomm.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --enable-maintainer-mode
