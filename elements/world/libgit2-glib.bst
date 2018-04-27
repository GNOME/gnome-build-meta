kind: meson
sources:
- kind: git
  url: git_gnome_org:libgit2-glib
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- world/libgit2.bst
- base.bst
