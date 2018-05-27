kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/atk
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
