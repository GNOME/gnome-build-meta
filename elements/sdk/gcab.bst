kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gcab
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
