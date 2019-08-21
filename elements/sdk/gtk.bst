kind: meson
sources:
- kind: tar
  url: gnome_downloads:gtk/3.96/gtk-3.96.0.tar.xz
depends:
- sdk/at-spi2-atk.bst
- sdk/atk.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/graphene.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/pango.bst
- filename: components/cups.bst
  junction: freedesktop-sdk.bst
- filename: components/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: components/hicolor-icon-theme.bst
  junction: freedesktop-sdk.bst
- filename: components/libepoxy.bst
  junction: freedesktop-sdk.bst
- filename: components/libxkbcommon.bst
  junction: freedesktop-sdk.bst
- filename: components/wayland.bst
  junction: freedesktop-sdk.bst
- filename: components/wayland-protocols.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: >-
    -Denable-broadway-backend=true
