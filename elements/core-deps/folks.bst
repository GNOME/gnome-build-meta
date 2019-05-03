kind: meson
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
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local:
    -Deds_backend=true
    -Dlibsocialweb_backend=false
    -Dtelepathy_backend=false
