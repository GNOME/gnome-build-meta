kind: autotools
sources:
- kind: tar
  url: https://releases.pagure.org/libosinfo/osinfo-db-tools-1.2.0.tar.gz
  ref: 3b50829e5b58db15fe9fc8caf005aa18300262fea4562da0c2dfbe56355ff81f
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
