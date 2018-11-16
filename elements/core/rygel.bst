kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/rygel/0.37/rygel-0.37.0.tar.xz
depends:
- core-deps/gupnp-av.bst
- core-deps/gupnp-dlna.bst
- core-deps/gupnp.bst
- core-deps/libgee.bst
- core-deps/libmediaart.bst
- core-deps/tracker.bst
- sdk/vala.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
