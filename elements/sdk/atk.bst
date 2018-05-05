kind: meson
sources:
- kind: git
  url: git_gnome_org:atk
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- base.bst
