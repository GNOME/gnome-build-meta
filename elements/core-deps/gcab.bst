kind: meson
sources:
- kind: git
  url: git_gnome_org:gcab
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
