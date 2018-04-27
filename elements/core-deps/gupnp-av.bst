kind: autotools
sources:
- kind: git
  url: git_gnome_org:gupnp-av
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- core-deps/gupnp.bst
- base.bst
