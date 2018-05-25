kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/amtk.git
  track: master
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
