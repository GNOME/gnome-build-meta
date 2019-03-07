kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/folks.git
  track: master
depends:
- core-deps/evolution-data-server.bst
- sdk/dbus-glib.bst
- sdk/gobject-introspection.bst
- sdk/libgee.bst
- sdk/vala.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-eds-backend --disable-libsocialweb-backend --disable-telepathy-backend --disable-fatal-warnings
