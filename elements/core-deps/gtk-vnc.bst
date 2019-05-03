kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gtk-vnc.git
  track: master
  submodules:
    src/keycodemapdb:
      checkout: True
      url: gitlab_com:keycodemap/keycodemapdb.git
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: components/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
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
    --with-gtk=3.0
    --enable-vala
    --disable-werror
