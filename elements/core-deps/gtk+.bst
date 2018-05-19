kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gtk
  track: master
depends:
- core-deps/graphene.bst
- sdk/at-spi2-atk.bst
- sdk/atk.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/gstreamer.bst
- sdk/gtk-doc.bst
- sdk/pango.bst
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Denable-broadway-backend=true
