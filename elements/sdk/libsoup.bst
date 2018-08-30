kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libsoup/2.63/libsoup-2.63.92.tar.xz
  ref: 5dbf5c5050d426ecca2d8a770aebcd3823d4900b4d4301d5eeff3cbc6f5fb405
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
