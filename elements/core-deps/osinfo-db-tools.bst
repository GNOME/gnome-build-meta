kind: autotools
sources:
- kind: git
  url: gitlab_com:libosinfo/osinfo-db-tools.git
  track: master
depends:
- core-deps/glib.bst
- core-deps/gnome-common.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
