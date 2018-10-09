kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gupnp-igd/0.2/gupnp-igd-0.2.5.tar.xz
depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-python
