kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gdk-pixbuf/2.36/gdk-pixbuf-2.36.12.tar.xz
  ref: fff85cf48223ab60e3c3c8318e2087131b590fd6f1737e42cb3759a3b427a334
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
