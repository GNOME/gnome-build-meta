kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:folks
  track: master
depends:
- core-deps/dbus-glib.bst
- core-deps/evolution-data-server.bst
- core-deps/gobject-introspection.bst
- core-deps/libgee.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-eds-backend --disable-libsocialweb-backend --disable-telepathy-backend --disable-fatal-warnings
