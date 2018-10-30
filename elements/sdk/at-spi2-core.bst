kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/at-spi2-core
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
