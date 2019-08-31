kind: meson
sources:
- kind: tar
  url: gnome_downloads:folks/0.13/folks-0.13.1.tar.xz
depends:
- core-deps/evolution-data-server.bst
- sdk/dbus-glib.bst
- sdk/gobject-introspection.bst
- sdk/libgee.bst
- sdk/vala.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Deds_backend=true -Dlibsocialweb_backend=false -Dtelepathy_backend=false
