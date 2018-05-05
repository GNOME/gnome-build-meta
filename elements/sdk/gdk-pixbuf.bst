kind: meson
sources:
- kind: git
  url: git_gnome_org:gdk-pixbuf
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- base.bst
public:
  bst:
    integration-commands:
    - gdk-pixbuf-query-loaders --update-cache
