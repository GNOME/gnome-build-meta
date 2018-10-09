kind: autotools
sources:
- kind: tar
  url: https://releases.pagure.org/libosinfo/osinfo-db-tools-1.2.0.tar.gz
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
