kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgit2-glib
  track: master
depends:
- apps/libgit2.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- base.bst
