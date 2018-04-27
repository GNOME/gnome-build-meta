kind: autotools
sources:
- kind: git
  url: git_gnome_org:atk
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- base.bst
