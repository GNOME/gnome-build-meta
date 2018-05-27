kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gupnp
  track: gupnp-1.0
depends:
- core-deps/NetworkManager.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gssdp.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-context-manager=network-manager
