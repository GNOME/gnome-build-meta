kind: meson
sources:
- kind: git
  url: git_gnome_org:libgxps
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- base.bst
