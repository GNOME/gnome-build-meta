kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/at-spi2-core.git
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: components/dbus.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
