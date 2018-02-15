kind: autotools
sources:
- url: https://download.gnome.org/sources/gupnp/1.0/gupnp-1.0.2.tar.xz
  kind: tar
  ref: 5173fda779111c6b01cd4a5e41b594322be9d04f8c74d3361f0a0c2069c77610
depends:
- core-deps/NetworkManager.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gssdp.bst
- core-deps/libsoup.bst
- base.bst
variables:
  conf-local: --with-context-manager=network-manager
