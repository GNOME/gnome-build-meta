kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gupnp-igd/0.2/gupnp-igd-0.2.5.tar.xz
  ref: 8b4a1aa38bacbcac2c1755153147ead7ee9af7d4d1f544b6577cfc35e10e3b20
depends:
- core-deps/glib.bst
- core-deps/gupnp.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-python
