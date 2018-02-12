kind: autotools
sources:
- kind: git
  url: git_gnome_org:gupnp
  track: gupnp-1.0
depends:
- core-deps/NetworkManager.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gssdp.bst
- core-deps/libsoup.bst
- base.bst
variables:
  conf-local: --with-context-manager=network-manager
