depends:
- core-deps/NetworkManager.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gssdp.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 794b162ee566d85eded8c3f3e8c9c99f6b718a6b812d8b56f0c2ed72ac37cbbb
  url: https://download.gnome.org/sources/gupnp/1.0/gupnp-1.0.3.tar.xz
variables:
  conf-local: --with-context-manager=network-manager
