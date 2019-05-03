kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gupnp-igd.git
  track: master
depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --disable-python
