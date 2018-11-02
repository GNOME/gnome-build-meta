kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gupnp-igd
  track: master
depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-python
