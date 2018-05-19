kind: autotools
sources:
- kind: git
  url: git_gnome_org:gupnp-igd
  track: master
depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-python
