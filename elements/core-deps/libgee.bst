kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgee
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
