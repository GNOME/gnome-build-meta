kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:aplazas/libmanette.git
  track: master
depends:
- core-deps/glib.bst
- core-deps/libgudev.bst
- core-deps/libevdev.bst
- core-deps/gobject-introspection.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
