kind: autotools
sources:
- kind: git
  url: git_gnome_org:gupnp-igd
  track: master
depends:
- core-deps/glib.bst
- core-deps/gupnp.bst
- base.bst
variables:
  conf-local: --disable-python
