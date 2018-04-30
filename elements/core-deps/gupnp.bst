kind: autotools
sources:
- kind: git
  url: git_gnome_org:gupnp
  track: gupnp-1.0
depends:
- core-deps/NetworkManager.bst
- core-deps/gssdp.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libsoup.bst
- base.bst
variables:
  conf-local: --with-context-manager=network-manager
