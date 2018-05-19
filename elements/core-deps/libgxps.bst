kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgxps
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
