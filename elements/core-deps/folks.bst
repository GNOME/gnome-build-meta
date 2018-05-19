kind: autotools
sources:
- kind: git
  url: git_gnome_org:folks
  track: master
depends:
- core-deps/evolution-data-server.bst
- core-deps/libgee.bst
- sdk/dbus-glib.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-eds-backend --disable-libsocialweb-backend --disable-telepathy-backend --disable-fatal-warnings
