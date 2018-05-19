kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gupnp-av
  track: master
depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
