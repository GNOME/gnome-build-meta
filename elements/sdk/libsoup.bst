kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/libsoup/2.65/libsoup-2.65.1.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libpsl.bst
- filename: sdk/vala.bst
  type: build
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: |
    -Dtls_check=false \
    -Dvapi=true \
    -Ddocs=true
