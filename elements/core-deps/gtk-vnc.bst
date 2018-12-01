kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gtk-vnc
  track: master
  submodules:
    src/keycodemapdb:
      checkout: True
      url: gitlab_com:keycodemap/keycodemapdb.git
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gnome-common.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-gtk=3.0 --enable-vala --disable-werror
