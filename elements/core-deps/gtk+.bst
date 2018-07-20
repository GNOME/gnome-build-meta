kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gtk+/3.94/gtk+-3.94.0.tar.xz
  ref: a947caa5296610b0f1d7a03b58df34765c227c577c78e683e75eea3251a67035
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
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Denable-broadway-backend=true
