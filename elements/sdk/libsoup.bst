kind: meson
sources:
- kind: tar
  url: gnome_downloads:libsoup/2.66/libsoup-2.66.4.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: desktop/libpsl.bst
  junction: freedesktop-sdk.bst
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
