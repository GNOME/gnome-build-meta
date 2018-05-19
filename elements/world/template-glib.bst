kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/template-glib.git
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
