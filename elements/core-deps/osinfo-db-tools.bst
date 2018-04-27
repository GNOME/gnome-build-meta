kind: autotools
sources:
- kind: git
  url: gitlab_com:libosinfo/osinfo-db-tools.git
  track: master
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- base.bst
