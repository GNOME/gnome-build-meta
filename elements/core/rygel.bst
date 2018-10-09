kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/rygel/0.36/rygel-0.36.2.tar.xz
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
