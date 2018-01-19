kind: autotools
sources:
- kind: git
  url: gitlab_com:libosinfo/libosinfo.git
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/libsoup.bst
- core-deps/osinfo-db-tools.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --enable-werror=no
