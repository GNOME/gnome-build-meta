kind: autotools
sources:
- kind: git
  url: git_gnome_org:folks
  track: master
depends:
- sdk/dbus-glib.bst
- core-deps/evolution-data-server.bst
- sdk/gobject-introspection.bst
- core-deps/libgee.bst
- sdk/vala.bst
- base.bst
variables:
  conf-local: --enable-eds-backend --disable-libsocialweb-backend --disable-telepathy-backend --disable-fatal-warnings
