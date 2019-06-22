kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gupnp-igd.git
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
  conf-local: >-
    --disable-python
