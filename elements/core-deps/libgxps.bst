kind: meson
sources:
- kind: git
  url: git_gnome_org:libgxps
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- base.bst
