kind: autotools
sources:
- kind: tar
  url: gnome_downloads:folks/0.12/folks-0.12.1.tar.xz
depends:
- core-deps/evolution-data-server.bst
- sdk/dbus-glib.bst
- sdk/gobject-introspection.bst
- sdk/libgee.bst
- sdk/vala.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-eds-backend --disable-libsocialweb-backend --disable-telepathy-backend
    --disable-fatal-warnings
