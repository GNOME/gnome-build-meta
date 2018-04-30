kind: meson
sources:
- kind: git
  url: git_gnome_org:gtk+
  track: master
depends:
- sdk/at-spi2-atk.bst
- sdk/atk.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/graphene.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/gstreamer.bst
- sdk/gtk-doc.bst
- sdk/pango.bst
- sdk/wayland.bst
- base.bst
variables:
  meson-local: -Denable-broadway-backend=true
