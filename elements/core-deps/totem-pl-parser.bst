kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/totem-pl-parser.git
  track: master
depends:
- core-deps/gmime3.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
