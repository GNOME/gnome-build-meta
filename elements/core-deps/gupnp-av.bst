kind: autotools
sources:
- kind: git
  url: git_gnome_org:gupnp-av
  track: master
depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- base.bst
