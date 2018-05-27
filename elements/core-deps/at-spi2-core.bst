kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:at-spi2-core
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
