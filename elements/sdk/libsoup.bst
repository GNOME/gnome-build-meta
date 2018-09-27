kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/libsoup/2.64/libsoup-2.64.1.tar.xz
  ref: 359bd02a909bfd43f68712146e9c4f4c643bffa84e513d8b0af1be215a92e1f3
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libpsl.bst
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  meson-local: |
    -Dtls_check=false \
    -Dvapi=true \
    -Ddocs=true
