kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:totem-pl-parser
  track: master
depends:
- core-deps/glib.bst
- core-deps/gmime3.bst
- core-deps/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
