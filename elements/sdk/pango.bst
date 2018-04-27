kind: meson
sources:
- kind: git
  url: git_gnome_org:pango
  track: master
depends:
- sdk/fribidi.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- base.bst
