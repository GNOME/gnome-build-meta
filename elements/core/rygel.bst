kind: autotools
sources:
- kind: git
  url: git_gnome_org:rygel
  track: master
depends:
- core-deps/gupnp-av.bst
- core-deps/gupnp-dlna.bst
- core-deps/gupnp.bst
- core-deps/libgee.bst
- core-deps/libmediaart.bst
- core-deps/tracker.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
