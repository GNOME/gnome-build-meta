kind: meson
sources:
- url: https://download.gnome.org/sources/gtk+/3.93/gtk+-3.93.0.tar.xz
  kind: tar
  ref: 4215d724c751b4999348d812d30261bcdfe52e41db1e20e8f3cefc7e80736251
depends:
- core-deps/atk.bst
- core-deps/at-spi2-atk.bst
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/graphene.bst
- core-deps/gst-plugins-bad.bst
- core-deps/gst-plugins-base.bst
- core-deps/gstreamer.bst
- core-deps/gtk-doc.bst
- core-deps/m4-common.bst
- core-deps/meson.bst
- core-deps/pango.bst
- core-deps/wayland-protocols.bst
- core-deps/wayland.bst
- base.bst
variables:
  meson-local: -Denable-broadway-backend=true
