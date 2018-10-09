kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gupnp/1.0/gupnp-1.0.3.tar.xz
depends:
- core-deps/NetworkManager.bst
- core-deps/gssdp.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-context-manager=network-manager
