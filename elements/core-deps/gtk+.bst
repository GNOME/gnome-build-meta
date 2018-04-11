kind: meson
sources:
- kind: git
  url: git_gnome_org:gtk+
  track: master
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
- core-deps/pango.bst
- core-deps/wayland.bst
- base.bst
variables:
  meson-local: -Denable-broadway-backend=true
