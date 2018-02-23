kind: meson
sources:
- url: https://download.gnome.org/sources/gdk-pixbuf/2.36/gdk-pixbuf-2.36.11.tar.xz
  kind: tar
  ref: ae62ab87250413156ed72ef756347b10208c00e76b222d82d9ed361ed9dde2f3
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
(?):
- base == 'freedesktop1.8':
    environment:
      XML_CATALOG_FILES: /usr/etc/xml/catalog
