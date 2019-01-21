kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gsettings-desktop-schemas
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
