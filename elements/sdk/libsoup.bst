kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libsoup/2.64/libsoup-2.64.0.tar.xz
  ref: d95bc9602c97ec805d80e5ddf75605665c4c4d6b2c56893c416e707ef578e727
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
  conf-local: --disable-tls-check
