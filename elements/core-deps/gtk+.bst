kind: meson
sources:
- kind: git
  url: git_gnome_org:gtk+
  track: master
depends:
- core-deps/atk.bst
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/graphene.bst
- core-deps/gtk-doc.bst
- core-deps/m4-common.bst
- core-deps/meson.bst
- core-deps/pango.bst
- core-deps/wayland-protocols.bst
- core-deps/wayland.bst
- core/at-spi2-atk.bst
- base.bst
variables:
  meson-local: -Denable-broadway-backend=true
