kind: autotools
sources:
- kind: tar
  url: https://releases.pagure.org/libosinfo/libosinfo-1.1.0.tar.gz
  ref: 600f43a4a8dae5086a01a3d44bcac2092b5fa1695121289806d544fb287d3136
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/libsoup.bst
- core-deps/osinfo-db-tools.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --enable-werror=no
