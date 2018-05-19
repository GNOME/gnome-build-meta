kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gupnp
  track: gupnp-1.0
depends:
- core-deps/NetworkManager.bst
- core-deps/gssdp.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-context-manager=network-manager
