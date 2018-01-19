kind: meson
sources:
- kind: git
  url: git_gnome_org:gdk-pixbuf
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- core-deps/meson.bst
- base.bst
public:
  bst:
    integration-commands:
    - gdk-pixbuf-query-loaders --update-cache
