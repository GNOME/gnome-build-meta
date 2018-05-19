kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:aplazas/libmanette.git
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
