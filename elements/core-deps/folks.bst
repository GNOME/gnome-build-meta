kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/folks/0.11/folks-0.11.4.tar.xz
  ref: a7b03ed30373e29f62fc3e6f498adce2d4909b852608fc2058a02fda9f80189a
depends:
- core-deps/dbus-glib.bst
- core-deps/evolution-data-server.bst
- core-deps/gobject-introspection.bst
- core-deps/libgee.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-eds-backend --disable-libsocialweb-backend --disable-telepathy-backend
    --disable-fatal-warnings
