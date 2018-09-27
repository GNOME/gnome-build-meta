kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/rygel/0.36/rygel-0.36.2.tar.xz
  ref: d332c76c76716de1e5085f0ca0c152174352efd652a80e5b94ec7df797f92244
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
