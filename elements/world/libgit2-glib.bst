kind: meson
sources:
- kind: git
  url: git_gnome_org:libgit2-glib
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- world/libgit2.bst
- base.bst
