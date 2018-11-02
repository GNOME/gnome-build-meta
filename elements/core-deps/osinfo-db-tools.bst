kind: autotools
sources:
- kind: git
  url: gitlab_com:libosinfo/osinfo-db-tools.git
  track: master
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
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
