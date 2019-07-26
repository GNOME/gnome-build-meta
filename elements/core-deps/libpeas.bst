kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libpeas.git
  track: master
depends:
- filename: core-deps/intltool.bst
  type: build
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/pygobject.bst
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
    --enable-python3
