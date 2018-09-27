kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gtk+/3.94/gtk+-3.94.0.tar.xz
  ref: a947caa5296610b0f1d7a03b58df34765c227c577c78e683e75eea3251a67035
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
- filename: sdk/gtk-doc.bst
  type: build
- sdk/pango.bst
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Denable-broadway-backend=true
