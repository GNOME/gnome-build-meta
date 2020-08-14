kind: meson
sources:
- kind: tar
  url: gnome_downloads:rygel/0.38/rygel-0.38.4.tar.xz
  ref: ece7f3e04d1e4c177b00374cb39f91e8353c62f90cf37150927eb38c7ea8a166
depends:
- core-deps/gssdp.bst
- core-deps/gupnp-av.bst
- core-deps/gupnp-dlna.bst
- core-deps/gupnp.bst
- core-deps/libmediaart.bst
- core-deps/tracker.bst
- sdk/libgee.bst
- sdk/vala.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
