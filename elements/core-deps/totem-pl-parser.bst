kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/totem-pl-parser
  track: master
depends:
- core-deps/gmime3.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
