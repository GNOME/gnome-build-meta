kind: autotools
sources:
- kind: tar
  url: gnome_downloads:rygel/0.38/rygel-0.38.2.tar.xz
depends:
- core-deps/gssdp.bst
- core-deps/gupnp-av.bst
- core-deps/gupnp-dlna.bst
- core-deps/gupnp.bst
- core-deps/libmediaart.bst
- core-deps/tracker.bst
- sdk/libgee.bst
- sdk/vala.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
