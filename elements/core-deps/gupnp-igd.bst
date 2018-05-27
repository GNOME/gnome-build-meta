kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gupnp-igd
  track: master
depends:
- core-deps/glib.bst
- core-deps/gupnp.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-python
