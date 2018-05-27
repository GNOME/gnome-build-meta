kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gupnp-av
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gupnp.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
