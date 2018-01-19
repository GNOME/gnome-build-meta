kind: autotools
sources:
- kind: git
  url: git_gnome_org:folks
  track: master
depends:
- core-deps/evolution-data-server.bst
- core-deps/gobject-introspection.bst
- core-deps/libgee.bst
- core-deps/telepathy-glib.bst
- core-deps/telepathy-logger.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --enable-eds-backend --disable-libsocialweb-backend --disable-fatal-warnings
